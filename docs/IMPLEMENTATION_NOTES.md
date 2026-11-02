&#x20;Implementation Notes



1\. Project Overview



The Student Registration and Grading System was developed using Oracle SQL and PL/SQL. It manages student details, course information, and academic results.



&#x20;2. Database Implementation



Three tables were created:



\* STUDENTS: Stores student information.

\* COURSES: Stores course details.

\* RESULTS: Stores marks and grades and connects students with courses.



Primary keys uniquely identify records, while foreign keys establish relationships between the tables.



&#x20;3. PL/SQL Implementation



The following concepts were implemented:



\* Records and `%ROWTYPE` to store related data.

\* Associative arrays, nested tables, and VARRAYs to manage collections.

\* Implicit cursors to check the results of SQL statements.

\* Explicit cursors to retrieve records.

\* `BULK COLLECT` and `FORALL` for bulk processing.

\* Stored procedures to update student marks and grades.

\* Functions to calculate student average marks.

\* Exception handling to manage errors.



&#x20;4. Testing



The application was tested using sample student, course, and result records.



Tests included:



\* Retrieving student and course information.

\* Displaying student results.

\* Calculating average marks.

\* Updating marks using a stored procedure.

\* Handling invalid marks.

\* Handling non-existing student IDs.



&#x20;5. Challenges



Some challenges involved understanding PL/SQL syntax, compiling procedures and functions, and handling exceptions. These were addressed through testing and correcting the code.



&#x20;6. Conclusion



The implementation demonstrates the use of advanced Oracle PL/SQL concepts in managing student registration and academic results.



