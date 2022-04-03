# Data-Ingestion-Process-Talend
Data ingestion process from files to sql server using parameterized bulk exec commands using Talend Open studio

**Prerequisites :**
1. Talend Open studio for Bigdata - Talend is an open-source ETL tool based on Java
2. Java latest version compatible with Talend.
3. MS SQL SERVER - Create DB with name as "dwh" and schema with name "temp"

In this demonstration, We are going to understand the creation of a Ingestion framework using Talend that will load data from files of local system to MS SQL server using metadata table. This single job will load different format of files into different tables in a Database. 

Step 1 : Configure Metadata Table - This process requires a metadata table (meta.file_ingestion_metadata) which contains all the information related to source files, location, pattern, formats, delimiters, target table,target schema, columns list etc..

DDL and DML for metadata is present in DML/DDL folders of GIT.

![image](https://user-images.githubusercontent.com/102896115/161420001-0e580ea1-949c-4387-a138-d8374224f5d0.png)


Step 2 : Configure Global context file in Talend using implicit context load.
![image](https://user-images.githubusercontent.com/102896115/161420554-8988b9c9-a2e7-4f75-b83e-2d60047c5809.png)


Step 3 : Source file is placed in source file folder of GIT. Copy them to local directory.

Step 4 : Talend job - Ingestion process

![image](https://user-images.githubusercontent.com/102896115/161420613-053ea2e0-01e9-4298-98e8-6d1dfdd8902e.png)



