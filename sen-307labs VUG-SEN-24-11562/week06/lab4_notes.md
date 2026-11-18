
# VUA-SEN307 Week 6 Practical
## Lab 4: Data Manipulation Language (DML)

### Referential Integrity Exercise

During Part 4, I encountered MySQL Error 1451 when
I attempted to delete the department named
"Library and Information Science".

MySQL refused to delete the department because a
student record (Transfer Student) was still
referencing it through a foreign key.

I fixed the error by first updating the student's
department to Software Engineering. After moving
the student, I successfully deleted the temporary
department.

Another possible solution would have been to delete
the dependent student record first, but this would
result in losing the student data.
