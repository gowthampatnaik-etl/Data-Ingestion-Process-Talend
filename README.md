# Data-Ingestion-Process-Talend
Data ingestion process of files from local directory to sql server through parameterized bulk exec commands using Talend Open studio

**Prerequisites :**

1. Talend Open studio for Bigdata - Talend is an open-source ETL tool based on Java
2. Java latest version compatible with Talend.
3. MS SQL SERVER - Create DB with name as "dwh" and schema with name "temp"

In this demonstration, We are going to understand the creation of a Ingestion framework using Talend that will load data from files of local system to MS SQL server using metadata table. This single job will load different format of files into different tables in a Database. 

**Demonstration :**

Step 1 : Configure Metadata Table - This process requires a metadata table (meta.file_ingestion_metadata) which contains all the information related to source files, location, pattern, formats, delimiters, target table,target schema, columns list etc..

DDL and DML for metadata is present in DML/DDL folders of GIT.

![image](https://user-images.githubusercontent.com/102896115/161420001-0e580ea1-949c-4387-a138-d8374224f5d0.png)


Step 2 : Configure Global context file in Talend using implicit context load.

Step 2.1 : Create a context file and place in the directory (F:\Talend_Workspace\context\context_global.properties).
![image](https://user-images.githubusercontent.com/102896115/161420554-8988b9c9-a2e7-4f75-b83e-2d60047c5809.png)

Step 2.2 : Configure the context file in Talend opend studio as shown below:
![image](https://user-images.githubusercontent.com/102896115/161421542-eb8aced8-3db3-4777-9493-5e2c0e59db75.png)


Step 3 : Source file is placed in source file folder of GIT. Copy them to local directory (F:\Talend_Workspace\Input).

Step 4 : Talend job - Ingestion process - This job will copy different format of files from local system to database using metadata tables.

![image](https://user-images.githubusercontent.com/102896115/161420613-053ea2e0-01e9-4298-98e8-6d1dfdd8902e.png)

Step 4.1 : Creating DB connection using context variables defined in context properties file.

![image](https://user-images.githubusercontent.com/102896115/161420803-3bf00a30-5565-43b0-a718-8dff306f6def.png)

Step 4.2.1 : Extact entries from metadata table.
![image](https://user-images.githubusercontent.com/102896115/161422108-def7c2d9-1f4d-44ef-8191-27d8e7bda43e.png)

Step 4.2.2 : Create schema for DB input - metadata tables extract
![image](https://user-images.githubusercontent.com/102896115/161422042-60214757-eb28-48fb-8de3-97b5e3810363.png)

Step 4.3 : File List to get the complete file name from source file location and assign it to a global variable. 
![image](https://user-images.githubusercontent.com/102896115/161420862-7adbc6b4-6fc0-44c5-8e33-276dba1a9e73.png)

Step 4.4 : This tjava component will create parameterized queries and assign them to variables.
**a. DROP_TABLE_SQL - DROP the target table if already exists in databse.
b. CREATE_TABLE_SQL - Creates the table.
c. COPY_SQL - paramterized Bulk Exec commands to copy files to SQl server tables.
d. ALTER_SQL - Alter the table and add housekeeping columns.
e. UPDATE_SQL - Update the housekeeping columns.**

![image](https://user-images.githubusercontent.com/102896115/161420877-7eb68e87-ee9e-4344-aaf5-3fa770486e2e.png)

Step 4.5 : Fixed flow input will fetch each variable that was defined in tjava component and execute them step by step sequentially.
![image](https://user-images.githubusercontent.com/102896115/161420894-e412e2d1-fd59-4dd2-a5f7-d3474553dcff.png)

Step 4.5.1 : Fixed flow input schema
![image](https://user-images.githubusercontent.com/102896115/161421472-1f55fbf2-da31-42bb-b841-39b51221c019.png)

Step 4.6 : Logging through tjavarow to print sql query - start
![image](https://user-images.githubusercontent.com/102896115/161420907-645dfdd3-6dae-48fb-a215-123fd94af5ab.png)

Step 4.7 : Run the parameterized sql queries one by one.
![image](https://user-images.githubusercontent.com/102896115/161420920-fbaa3f63-ee46-4240-8057-d900345e2f8d.png)

Step 4.8 : Logging through tjavarow to print sql query - completed
![image](https://user-images.githubusercontent.com/102896115/161420932-4ed2557f-1bf4-4eea-be01-c60276240499.png)

**Execution :**

Step 1 : Copy them to local directory (F:\Talend_Workspace\Input\employees_20220101.txt)
![image](https://user-images.githubusercontent.com/102896115/161435831-ee245295-d9e7-4e90-8eb9-49cdff4dd5d2.png)

Step 2 : Run the Talend job - job_0000_FILE_ingestion
![image](https://user-images.githubusercontent.com/102896115/161435628-123ab4c0-1973-472e-9734-057df0edd0ca.png)

Step 3 : Check the results in MS SQL SERVER.
![image](https://user-images.githubusercontent.com/102896115/161435884-6f945d86-30d7-4a28-92b0-c76e87c6f529.png)


**Conclusion :**
We can create similar kind of ingestion frameworks using metadata tables based on sources and targets as per requirement. 


