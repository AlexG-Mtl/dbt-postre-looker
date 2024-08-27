# Dimensional Modeling Project with Azure PostgreSQL, dbt Core, and Looker

This project demonstrates how to use Azure PostgreSQL with the superstore dataset, create dbt models, and analyze data with Looker.

## Table of Contents
- [Getting Started](#getting-started)
- [Prerequisites for VM](#prerequisites)
- [Project Tasks](#project-tasks)

## Getting Started
Build a new Windows VM in Azure and install all required tools.

## Prerequisites for VM
- DBeaver
- Git
- Python
- VSCode

## Project Tasks
### Week 1: Clone the Repo and Access it Using VS Code
Follow these steps to set up your local repository and prepare for development:

1. **Create a repo on GitHub.**
   - Navigate to GitHub and create a new repository named `dbt-postre-looker`.

2. **Clone the repository locally.**
   - Open your command line interface and run:
     ```bash
     git clone https://github.com/AlexG-Mtl/dbt-postre-looker.git
     cd dbt-postre-looker
     ```

3. **Create a branch named `alex1`.**
   - Create and switch to a new branch by running:
     ```bash
     git checkout -b alex1
     ```

4. **Create `README.md`.**
   - Use your favorite text editor or IDE (such as VS Code) to create and edit the `README.md` file.

5. **Commit locally.**
   - After editing the `README.md`, add your changes to staging and commit them locally:
     ```bash
     git add README.md
     git commit -m "Add detailed project README.md"
     ```

6. **Push to GitHub.**
   - Push your changes to your GitHub repository:
     ```bash
     git push origin alex1
     ```

   - This step uploads your local branch to GitHub, allowing others to see your changes and enabling you to create a pull request.



### Week 2: Create DB and Load Data to PostgreSQL
1. Add 3 source files to `input_data`.
2. Create a connection to PostgreSQL.
3. Set user properties for connection:
   - `escapeSyntaxCallMode=callIfNoReturn`
   - `require_secure_transport=OFF`
4. Convert data from `/input_data` to CSV, map it, and import using DBeaver.

### Week 3: Install dbt and Create Model and add pre commit
1. `python -m venv python -m venv C:\LABS\dbt_surf_env_01`
2. Activate the environment: `C:\LABS\dbt_surf_env_01\Scripts\activate.bat`


3. `pip install dbt-postgres`
4. Navigate to project directory: `cd C:\LABS\dbt-postre-looker`
5. Initialize dbt project: `dbt init dbt_surf_0`
6. add'`packages.yml` to `C:\LABS\dbt-postre-looker\dbt_surf_0`
7. add  `dbt_utils` to `packages.yml`
8. run `dbt deps`
9. run `git config --global core.autocrlf input`




18. Define sources.yml

### Week 4: Add Pre-commit and Compare dbt Strategies
- Configure pre-commit hooks.
- Compare different dbt materialization strategies: append, merge, delete+insert.
1. install pre commit `(dbt_surf_env_01) C:\LABS>pip install pre-commit`
2. Install SQLFluff `pip install sqlfluff`
3. `pip install sqlfluff-templater-dbt`
4.  add file `.pre-commit-config.yaml` (for checking YAML files, trailing whitespace, and linting SQL: verify versions)
5.  run `pre-commit install` (This command sets up the pre-commit hooks to run automatically on every commit.)
6.  test-abc for errors `pre-commit run --all-files`
7.  in case of issues with sqlfluff  remove refererence for  NOW from `.pre-commit-config.yaml`
8.  test for sql correction in code position `sqlfluff lint dbt_surf_0/models/bronze/stg_orders.sql --dialect postgres --templater dbt`

### Week 5: Add Tests and Create Documentation
- Define tests in `sources.yml` and `schema.yml`.
  1. add not null test
  2. add incremenatal for mart_orders
  3. run `dbt test`
  4. run `dbt docs generate` and `dbt docs serve`
  5. `dbt run --profile dbt_surf_0 --target prod`
  6. a1


## Features
- Data transformations using dbt.
- Integration with Looker for analytics.
- PostgreSQL as a data warehouse.

## Getting Started
1. Clone the repository: `git clone https://github.com/AlexG-Mtl/dbt-postre-looker.git`
2. Navigate to the project directory: `cd dbt-postre-looker`
3. Set up your environment as described.

## Contributing
Contributions are welcome! Please create a new branch for your work and submit a pull request for review.
