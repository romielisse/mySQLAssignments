create database students;
use students;

-- create department table
create table MCDepartments(
DepartmentID integer not null primary key auto_increment,
DepartmentName varchar(50),
DepartmentHead varchar(50)
);

-- create courses table
create table MCCourses(
CourseID integer not null primary key auto_increment,
CourseName varchar(50),
DepartmentID integer,
foreign key (DepartmentID) references MCDepartments(DepartmentID)
);

-- create majors table
create table MCMajors(
MajorID integer not null primary key auto_increment,
DepartmentID integer,
MajorName varchar(50),
foreign key(DepartmentID) references MCDepartments(DepartmentID)
);

-- create students table
create table MCStudents(
StudentID integer not null primary key auto_increment,
FirstName varchar(50),
LastName varchar(50),
Address varchar(100),
City varchar(50),
State varchar(5),
Zip varchar(10),
Phone varchar(20),
MajorID integer,
foreign key (MajorID) references MCMajors(MajorID)
);

-- check data after inserting students
select studentid, firstname, lastname from mcstudents;

-- create cross-reference table for majors and courses
create table MCCourse_Major(
CourseID integer,
MajorID integer,
foreign key(courseid) references mccourses(courseid),
foreign key(majorid) references mcmajors(majorid)
);

-- create cross-reference table for students and majors
create table MCStudent_Major(
StudentID integer,
MajorID integer,
foreign key(studentid) references mcstudents(studentid),
foreign key(majorid) references mcmajors(majorid)
);

-- create cross-reference table for students and courses
create table MCStudent_Course(
StudentID integer,
CourseID integer,
foreign key(studentid) references mcstudents(studentid),
foreign key(courseid) references mccourses(courseid)
);

-- insert data into departments table
insert into mcdepartments (departmentname, departmenthead) values ('Engineering and IT', 'Alton Henley');
insert into mcdepartments (departmentname, departmenthead) values ('Fine Arts', 'Mary Brown');
insert into mcdepartments (departmentname, departmenthead) values ('Science', 'James Walker');

-- insert data into majors table 
insert into mcmajors (departmentid, majorname) values (1, 'Computer Science');
insert into mcmajors (departmentid, majorname) values (1, 'Cybersecurity');
insert into mcmajors (departmentid, majorname) values (2, 'Art Theory');
insert into mcmajors (departmentid, majorname) values (2, 'Dance');
insert into mcmajors (departmentid, majorname) values (3, 'Biology');
insert into mcmajors (departmentid, majorname) values (3, 'Chemistry');

-- insert data into courses table
insert into mccourses (departmentid, coursename) values (1, 'Java 101');
insert into mccourses (departmentid, coursename) values (1, 'Intro to Databases');
insert into mccourses (departmentid, coursename) values (1, 'Intro to Cybersecurity');
insert into mccourses (departmentid, coursename) values (1, 'Encryption');
insert into mccourses (departmentid, coursename) values (2, 'Art History');
insert into mccourses (departmentid, coursename) values (2, 'Composition of Paintings');
insert into mccourses (departmentid, coursename) values (2, 'Ballet Forms');
insert into mccourses (departmentid, coursename) values (2, 'Modern Dance');
insert into mccourses (departmentid, coursename) values (3, 'Biology 101');
insert into mccourses (departmentid, coursename) values (3, 'Microbiology');
insert into mccourses (departmentid, coursename) values (3, 'Inorganic Chemistry');
insert into mccourses (departmentid, coursename) values (3, 'Physical Chemistry');

-- insert data into majors/courses cross-reference table
insert into mccourse_major (courseid, majorid) values (1,1);
insert into mccourse_major (courseid, majorid) values (2,1);
insert into mccourse_major (courseid, majorid) values (3,2);
insert into mccourse_major (courseid, majorid) values (4,2);
insert into mccourse_major (courseid, majorid) values (5,3);
insert into mccourse_major (courseid, majorid) values (6,3);
insert into mccourse_major (courseid, majorid) values (7,4);
insert into mccourse_major (courseid, majorid) values (8,4);
insert into mccourse_major (courseid, majorid) values (9,5);
insert into mccourse_major (courseid, majorid) values (10,5);
insert into mccourse_major (courseid, majorid) values (11,6);
insert into mccourse_major (courseid, majorid) values (12,6);

-- insert data into students/majors cross-reference table
insert into mcstudent_major (studentid, majorid) values (1,1);
insert into mcstudent_major (studentid, majorid) values (2,1);
insert into mcstudent_major (studentid, majorid) values (3,2);
insert into mcstudent_major (studentid, majorid) values (4,2);
insert into mcstudent_major (studentid, majorid) values (5,3);
insert into mcstudent_major (studentid, majorid) values (6,3);
insert into mcstudent_major (studentid, majorid) values (7,4);
insert into mcstudent_major (studentid, majorid) values (8,4);
insert into mcstudent_major (studentid, majorid) values (9,5);
insert into mcstudent_major (studentid, majorid) values (10,5);
insert into mcstudent_major (studentid, majorid) values (11,6);
insert into mcstudent_major (studentid, majorid) values (12,6);

-- insert data into students/courses cross-reference table
insert into mcstudent_course (studentid, courseid) values (1,1);
insert into mcstudent_course (studentid, courseid) values (1,2);
insert into mcstudent_course (studentid, courseid) values (2,1);
insert into mcstudent_course (studentid, courseid) values (2,12);
insert into mcstudent_course (studentid, courseid) values (3,3);
insert into mcstudent_course (studentid, courseid) values (3,4);
insert into mcstudent_course (studentid, courseid) values (4,4);
insert into mcstudent_course (studentid, courseid) values (4,5);
insert into mcstudent_course (studentid, courseid) values (5,5);
insert into mcstudent_course (studentid, courseid) values (5,6);
insert into mcstudent_course (studentid, courseid) values (6,5);
insert into mcstudent_course (studentid, courseid) values (6,1);
insert into mcstudent_course (studentid, courseid) values (7,7);
insert into mcstudent_course (studentid, courseid) values (7,8);
insert into mcstudent_course (studentid, courseid) values (8,8);
insert into mcstudent_course (studentid, courseid) values (8,5);
insert into mcstudent_course (studentid, courseid) values (9,9);
insert into mcstudent_course (studentid, courseid) values (9,10);
insert into mcstudent_course (studentid, courseid) values (10,10);
insert into mcstudent_course (studentid, courseid) values (10,5);
insert into mcstudent_course (studentid, courseid) values (11,11);
insert into mcstudent_course (studentid, courseid) values (11,12);
insert into mcstudent_course (studentid, courseid) values (12,11);
insert into mcstudent_course (studentid, courseid) values (12,2);

-- All students who are in the Engineering Department
select mcstudents.studentid, firstname, lastname, majorname, departmentname
from mcstudents
inner join mcstudent_major on mcstudents.studentid = mcstudent_major.studentid
inner join mcmajors on mcstudent_major.majorid = mcmajors.majorid
inner join mcdepartments on mcmajors.departmentid = mcdepartments.departmentid
where departmentname = 'Engineering and IT';

-- All students in a particular course
select mcstudents.studentid, firstname, lastname, coursename
from mcstudents
inner join mcstudent_course on mcstudents.studentid = mcstudent_course.studentid
inner join mccourses on mcstudent_course.courseid = mccourses.courseid
where coursename = 'Modern Dance';

-- All courses a particular student is taking
select mcstudents.studentid, firstname, lastname, coursename
from mcstudents
inner join mcstudent_course on mcstudents.studentid = mcstudent_course.studentid
inner join mccourses on mcstudent_course.courseid = mccourses.courseid
where mcstudents.studentid=3;

-- All students in a particular department
select mcstudents.studentid, firstname, lastname, departmentname
from mcstudents
inner join mcstudent_major on mcstudents.studentid = mcstudent_major.studentid
inner join mcmajors on mcstudent_major.majorid = mcmajors.majorid
inner join mcdepartments on mcmajors.departmentid = mcdepartments.departmentid
where departmentname = 'Fine Arts';





