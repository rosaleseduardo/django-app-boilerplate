Thank you for considering contributing to our repository! Your participation helps create something valuable and meaningful. To ensure smooth collaboration, we have established the following guidelines. Please take a moment to review them before you start contributing.

# Table Of Contents

- [Set up your environment](#set-up-your-environment)
- [Development Tooling](#development-tooling)
- [Documentation Standard](#documentation-standard)
- [How to contribute](#how-to-contribute)
- [How You Can Help](#how-you-can-help)
- [Development requirements](#development-requirements)
- [How to make a commit](#how-to-make-a-commit)
- [References](#references)

<br/>

## Set up your environment

1. Download and install [VSCode](https://code.visualstudio.com/Download).
2. Create a `.vscode/settings.json` file in the root of your project and
   include this configuration

```json
{
  "workbench.iconTheme": "material-icon-theme",
  "files.autoSave": "onFocusChange",
  "editor.minimap.enabled": true,
  "workbench.statusBar.visible": true,
  "editor.formatOnSave": true,
  "editor.rulers": [80],
  "window.zoomLevel": -1,
  "editor.wordWrap": "wordWrapColumn",
  "editor.wordWrapColumn": 80,
  "editor.guides.bracketPairs": true,
  "workbench.colorCustomizations": {
    "activityBar.background": "#333333",
    "activityBarBadge.background": "#FF4500",
    "statusBar.background": "#333333",
    "statusBar.foreground": "#FFFFFF",
    "titleBar.activeForeground": "#FFFFFF",

    "editorBracketHighlight.foreground1": "#D3D3D3",
    "editorBracketHighlight.foreground2": "#D3D3D3"
  },
  "editor.defaultFormatter": "charliermarsh.ruff",
  "editor.tabSize": 4,
  "editor.insertSpaces": true,
  "editor.codeActionsOnSave": {
    "source.fixAll": "explicit",
    "source.organizeImports": "explicit"
  }
}
```

3. Install the following plugins:
   - [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python)
   - [Python Debugger](https://marketplace.visualstudio.com/items?itemName=ms-python.debugpy)
   - [Pylance](https://marketplace.visualstudio.com/items?itemName=ms-python.vscode-pylance)
   - [Python Indent](https://marketplace.visualstudio.com/items?itemName=KevinRose.vsc-python-indent)
   - [autoDocstring](https://marketplace.visualstudio.com/items?itemName=njpwerner.autodocstring)
   - [Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker)
   - [TODO Highlight](https://marketplace.visualstudio.com/items?itemName=wayou.vscode-todo-highlight)
   - [CodeTour](https://marketplace.visualstudio.com/items?itemName=vsls-contrib.codetour)
   - [Markdown](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one)
   - [Material Icon Theme](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme)

## Working locally with a virtual environment

1. Install [Pipenv](https://pipenv.pypa.io/en/latest/) globally in your machine.
2. Install [PostgreSQL](https://www.postgresql.org/download/) globally in your machine. Also, install the PostgreSQL interactive terminal (psql).
3. Enter to the project's directory.
4. Execute `pipenv shell` to activate the virtual environment.
5. Execute `pipenv install` to install the dependencies.
6. Execute `pipenv run migrate` or `pipenv run make-migrations`,
   depending on the case.
7. Execute `pipenv run runserver` to start the app.

#### General Knowledge:

- Execute `deactivate` to deactivate the pipenv environment.

## Development Tooling

[![Django](https://img.shields.io/badge/django-%23092E20.svg?style=for-the-badge&logo=django&logoColor=white)](https://www.djangoproject.com/)

### Testing Tools:

TO BE INCLUDED

### Documentation Standard

TO BE INCLUDED

## How to contribute

1. Reporting Issues

   - Use the issue tracker to report bugs or request new features.
   - Provide as much detail as possible, including steps to reproduce the issue.

2. Submitting Pull Requests

   - Create your branch from `main`.
   - Follow the coding style guidelines.
   - Include tests for your changes if applicable.
   - Ensure your code passes all existing tests and does not introduce new
     issues.
   - Submit a pull request and provide a clear description of the changes. More
     details [here](#how-to-make-a-commit).

3. Code of Conduct

   - Be respectful and considerate of others.
   - Engage in constructive and inclusive discussions.

## How You Can Help

There are many ways to contribute, including but not limited to:

- **Reporting Bugs:** If you find a bug, please let us know by opening an issue.
- **Suggesting Features:** Have an idea for a new feature? We'd love to hear
  about it.
- **Writing Code:** Submit pull requests to fix bugs or add new features.
- **Improving Documentation:** Help us make our documentation clearer and more
  comprehensive.
- **Testing:** Test the project on different platforms and report any issues.

## Development requirements

The development considered to be included in the project's codebase, should
comply with the following criteria:

1. **Do not push a commit if the development is not completed**. Each commit is
   expected to be associated to a single ticket number, it means that
   **only one commit is allowed per ticket assigned.** (if you need to update your
   branch with the latest changes from the main branch, please perform a rebase)
2. **Each commit must deliver a stable version of the app.**
3. The commit must state the title of the task/subtask that was taken,
   **_e.g MDC-000 This is the title of the task_**
4. Add a description providing the answers to the following questions:
   - How the development in the branch will add value to the project?
   - (Optional) Is there any remaining work to be done? Please, provide the
     ticket number that will cover this development.

### _**EXCEPTIONS:**_

_If there's a need to merge something that wasn't initially scoped (unexpected bug or behavior), it can be done by following these criteria:_

- _The commit description should state the issue that arose and the temporary fix applied._
- _It must reference the ticket created to cover that bug fixing._

## How to make a commit

Make usage of the command `pnpm run commit:changes` to make a new commit. This will prompt you to define:

1. Type of change you're commiting (a list will be shown to you).
2. Scope of the change (optional).
3. A short, imperative tense description of the change (Refer to step 3 from the previous list)
4. A longer description of the change (Refer to step 4 from the previous list)
5. Notify if there's a breking change
   - If yes, provide details.
   - If no, proceed to the next step.
6. Notify if this commit affect any open issues
   - If yes, add the issue references.
   - If no, proceed to the next step.
7. The commit will be added to the git history.
8. Push the previously created commit to the remote repository.
