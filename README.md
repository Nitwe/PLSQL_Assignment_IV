&#x20;Student Registration and Grading System



&#x20;1. Project Description



The Student Registration and Grading System is a database application developed using Oracle SQL and PL/SQL. It manages student information, course details, and academic results.



The system allows users to store student records, manage courses, update marks, calculate average marks, and handle errors.



&#x20;2. Group Members



1\. Ishimwe Uwase Diane - 20252SEN154

2\. Shimwa Nitwe Benigne - 20252IMA171



3\. Technologies Used



\* Oracle Database

\* Oracle Live SQL

\* SQL

\* PL/SQL



&#x20;4. Database Structure



The application contains three main tables:



&#x20;  STUDENTS



\* student\_id (Primary Key)

\* first\_name

\* last\_name

\* email

\* registration\_date



&#x20; COURSES



\* course\_id (Primary Key)

\* course\_name

\* credit\_hours



&#x20;RESULTS



\* result\_id (Primary Key)

\* student\_id (Foreign Key)

\* course\_id (Foreign Key)

\* marks

\* grade



&#x20;Relationships



\* One student can have multiple results.

\* One course can appear in multiple results.

\* RESULTS connects STUDENTS and COURSES through foreign keys.



&#x20;5. PL/SQL Concepts Implemented



1\. User-defined records and `%ROWTYPE`.

2\. Collections:



&#x20;  \* Associative arrays

&#x20;  \* Nested tables

&#x20;  \* VARRAYs

3\. Implicit cursors.

4\. Explicit cursors.

5\. Bulk processing using `BULK COLLECT` and `FORALL`.

6\. Bulk DML error handling.

7\. Stored procedures.

8\. Functions.

9\. Exception handling.



&#x20;6. Project Folder Structure



\* 00\_schema/ – Table creation and sample data scripts.

\* 01\_procedures/ – PL/SQL procedures and programming concepts.

\* 02\_functions/ – PL/SQL functions.

\* 03\_tests/ – Success and error test cases.

\* screenshots/ – Execution evidence and test results.

\* docs/ – Project implementation documentation.



&#x20;7. How to Run the Project



1\. Open Oracle Live SQL.

2\. Run 01\_create\_tables.sql to create the database tables.

3\. Run 02\_insert\_sample\_data.sql to insert sample records.

4\. Execute the scripts in the 01\_procedures folder.

5\. Execute the function script in the 02\_functions folder.

6\. Run the test scripts in the 03\_tests folder.

7\. Check the screenshots folder for execution evidence.



&#x20;8. Testing



The application was tested using:



\* Student, course, and result queries.

\* Student average calculation.

\* Stored procedure execution.

\* Invalid marks.

\* Non-existing student IDs.

\* Exception handling.



&#x20;9. Conclusion



The project demonstrates how Oracle PL/SQL can be used to develop a database application. It applies records, collections, cursors, bulk processing, procedures, functions, and exception handling to manage student registration and academic results.



