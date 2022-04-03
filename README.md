# Data-Ingestion-Process-Talend
Data ingestion process from files to sql server using parameterized bulk exec commands using Talend Open studio

Prerequisites :
1. Talend Open studio 
2. Java latest version compatible with Talend.
3. MS SQL SERVER
4. Notepad++


Talend is an open-source ETL tool based on Java. Depending on which need to be done, there are different Talend tools. Demnstration is based on Talend Open Studio for Big Data.

In this demonstration, We are going to understand the creation of a Ingestion framework using Talend that will load data from files of local system to MS SQL server using metadata table. This single job will load different format of files into Database. 


Metadata Table - meta.file_ingestion_metadata : This process requires a metadata table which contains all the information related to source files, location, pattern, formats, delimiters, target table,target schema, columns list etc..

Please find the details below :

![image](https://user-images.githubusercontent.com/102896115/161420001-0e580ea1-949c-4387-a138-d8374224f5d0.png)
