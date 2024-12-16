# ===============================  BASE IMAGE  ===============================
FROM python:3.13.0

# Purpose: This sets the base image for the container.

# Details: It uses the official Python image with version 3.13.0. This
# ensures that all Python dependencies are built upon a stable and
# compatible Python runtime.




# ===================== IMPROVING CONTAINER PERFORMANCE  =====================

ENV PYTHONDONTWRITEBYTECODE=1

# Purpose: Disables the creation of .pyc files, which are Python bytecode cache files.

# Details:
#   - This reduces unnecessary writes to the file system, which is particularly #     useful in a container environment where performance and space
#     optimization are important.


ENV PYTHONUNBUFFERED=1

# Purpose: Forces Python output to be unbuffered.

# Details:
#   - Ensures that logs and print statements appear in real time in the 
#     container logs, instead of being delayed due to output buffering.
#
#   - Useful for debugging and monitoring application behavior.




# ========================== APLICATION CODE  SETUP ==========================
WORKDIR /app

# Purpose: Sets the working directory for the application code inside the
# container.

# Details:
#   - All subsequent commands (like COPY or RUN) are executed relative to this
#     directory.
#
#   - Using /app as the directory aligns with common conventions for
#     containerized applications.


COPY requirements.txt .

# Purpose: Copies the requirements.txt file into the container's working 
# directory.

# Details:
#   - This file contains the list of Python dependencies required by the
#     application.
#
#   - By copying it first, you can leverage Docker's layer caching to avoid
#     re-installing dependencies unless requirements.txt changes.




# ========================== DEPENDENCY INSTALATION ==========================

RUN pip install --upgrade pip

# Purpose: Upgrades pip, the Python package manager, to the latest version.

# Details:
#   - Ensures compatibility with modern Python packages and avoids issues with
#     outdated package managers.


RUN pip install -r requirements.txt

# Purpose: Installs the application dependencies specified in requirements.txt.

# Details:
#   - The -r flag tells pip to read the list of dependencies from the provided 
#     file.
#
#   - Dependencies are cached in the Docker image layer to improve build 
#     performance on subsequent builds.




# ======================= COPYING THE APPLICATION CODE =======================

COPY . .

# Purpose: Copies the entire application codebase from the local directory into 
# the container.

# Details:
#   - This allows all application files (e.g., manage.py, templates, static 
#     files, and app modules) to be accessible within the container.




# ======================= NETWORKING AND PORT EXPOSURE =======================

EXPOSE 8000

# Purpose: Informs Docker that the application will listen for traffic on port 
# 8000.

# Details:
#   - This is the default port for Django's development server.
#
#   - While EXPOSE itself does not open the port, it acts as metadata for other 
#     developers and tools to understand the container's networking 
#     requirements.




# ========================= STARTING THE APPLICATION =========================

CMD [ "python", "manage.py", "runserver", "0.0.0.0:8000" ]

# Purpose: Defines the command to run the Django application when the container starts.

# Details:
#   - python manage.py runserver starts Django's development server.
#
#   - The 0.0.0.0:8000 argument binds the server to all network interfaces at 
#     port 8000, making it accessible from outside the container.