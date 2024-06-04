# Meta DB Capstone

This repository is for the [database engineer capstone](https://www.coursera.org/learn/database-engineer-capstone) project as part of the [Meta Database Engineer Professional Certificate](https://www.coursera.org/professional-certificates/meta-database-engineer) on Coursera.



## Getting started
To set up a virtual environment, perform the following on a linux system
```
python -m venv venv
source venv/bin/activate
```
or on a Windows system
```
python -m venv venv
venv\Scripts\activate
```

One can then install the required packages
```
pip install -r requirements.in
```

## Database Settings

For managing database connections, create a .env file in this root directory and store your username, password, and database like follows

```
db_user = "my username"
db_password = "my password"
db_name = "my database name"
```

Make sure to use your actual username, password, and database name.

The file should look like the provided [.env.template](./.env.template) file.

## MySQL Workbench

MySQL workbench was used to design the database. The workbench file is [LittleLemonDM.mwb](./LittleLemonDM.mwb) and an image of the schema is located at [LittleLemonDB.png](./LittleLemonDB.png).

The SQL scripts can be found in the [sql](./sql/) directory.

## Jupyter Notebook

A jupyter [notebook](./workbook.ipynb) is provided that performs the tasks in one of the assignments.

The notebook also has the rubric tests implemented to verify that the stored procedures work as intended.

## Tableau Public

The Tableau portion of the capstone is included as a packaged workbook in this repository ([little_lemon_sales.twbx](./little_lemon_sales.twbx)) and is also available on [Tableau Public](https://public.tableau.com/app/profile/brandon.bergerud/viz/LittleLemonSalesMetaDBCapstone/Dashboard1).