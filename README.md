
# Hands On dbt

This repository contains hands-on materials and projects to learn **dbt** (Data Build Tool). The project aims to create a **data mart that** can answer the following analytics questions:

- How many monthly total revenue ?
- What is the best selling film ?
- Siapa aktor dengan jumlah peran terbanyak di film? 

## 🚀 Steps

1. Clone this repository:
```bash
   git clone https://github.com/ahfay/Hands-On-dbt.git
   cd Hands-On-dbt
```
2. Import Data in the **dvdrental/** folder to the PostgreSQL Database
```bash
   pg_restore -U <DB_USER> -d <DB_NAME> /dvdrental
```
3. Install Virtual Environment Python 3.11
```bash
   # Create a virtual environment
   python3.11 -m venv venv 

   # Enable virtual environment
   source venv/bin/activate  # Linux/Mac
   venv\Scripts\activate     # Windows
```
4. Install Library from requirements.txt
```bash
   pip install -r requirements.txt
```
5. Add Environment Variables
-Add the following variables to your virtual environment for database connection configuration:
   - DB_HOST: Host database (example: localhost)
   - DB_PORT: Port database (example: 5432)
   - DB_USER: Username database
   - DB_PASSWORD: Password database
   - DB_NAME: Nama database
To add variables on Linux/Mac, use:
```bash
export DB_HOST=<host>
export DB_PORT=<port>
export DB_USER=<user>
export DB_PASSWORD=<password>
export DB_NAME=<dbname>
```
In Windows (Command Prompt):
```bash
set DB_HOST=<host>
set DB_PORT=<port>
set DB_USER=<user>
set DB_PASSWORD=<password>
set DB_NAME=<dbname>
```
6. Connection Test
Make sure the connection to the database is successful by running a test script (if any) or verifying the connection using dbt:
```bash
dbt debug
```
7. Run Model
Execute the dbt model with the following command:
```bash
dbt run
```
8. Creating Documentation
Generate dbt project documentation to view model details:
```bash
dbt docs generate
```
To open the documentation in a browser:
```bash
dbt docs serve
```
