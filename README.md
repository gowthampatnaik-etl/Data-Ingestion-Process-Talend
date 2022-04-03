# Data-Ingestion-Process-Talend
Data ingestion process from files to sql server using parameterized bulk exec commands using Talend Open studio

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
![image](https://user-images.githubusercontent.com/102896115/161420554-8988b9c9-a2e7-4f75-b83e-2d60047c5809.png)


Step 3 : Source file is placed in source file folder of GIT. Copy them to local directory (F:\Talend_Workspace\Input).

Step 4 : Talend job - Ingestion process - This job will copy different format of files from local system to database using metadata tables.

![image](https://user-images.githubusercontent.com/102896115/161420613-053ea2e0-01e9-4298-98e8-6d1dfdd8902e.png)

Step 4.1 : Creating DB connection.
![image](https://user-images.githubusercontent.com/102896115/161420803-3bf00a30-5565-43b0-a718-8dff306f6def.png)
![image](https://user-images.githubusercontent.com/102896115/161420965-5f0b4d5f-79c5-45e2-862f-1ea7e167adec.png)

Step 4.2 : Creating DB connection.
![image](https://user-images.githubusercontent.com/102896115/161420833-c87cb3d9-ddcd-454b-8e97-42c714f97160.png)

Step 4.3 : Creating DB connection.
![image](https://user-images.githubusercontent.com/102896115/161420862-7adbc6b4-6fc0-44c5-8e33-276dba1a9e73.png)

Step 4.3 : Creating DB connection.
![image](https://user-images.githubusercontent.com/102896115/161420877-7eb68e87-ee9e-4344-aaf5-3fa770486e2e.png)

Step 4.3 : Creating DB connection.
![image](https://user-images.githubusercontent.com/102896115/161420894-e412e2d1-fd59-4dd2-a5f7-d3474553dcff.png)
![image](https://user-images.githubusercontent.com/102896115/161420948-7faa07ae-40f7-4a28-8ac9-d7bbc814d864.png)

Step 4.3 : Creating DB connection.
![image](https://user-images.githubusercontent.com/102896115/161420907-645dfdd3-6dae-48fb-a215-123fd94af5ab.png)

Step 4.3 : Creating DB connection.
![image](https://user-images.githubusercontent.com/102896115/161420920-fbaa3f63-ee46-4240-8057-d900345e2f8d.png)

Step 4.3 : Creating DB connection.
![image](https://user-images.githubusercontent.com/102896115/161420932-4ed2557f-1bf4-4eea-be01-c60276240499.png)





**Conclusion :**
We can create similar kind of ingestion frameworks using metadata tables in a similar way based on different sources and targets as per requirement. 


