CREATE TABLE users(
    usersID INT PRIMARY KEY ,
    usersLevel INT ,
    usersEmail VARCHAR (100),
    usersUID VARCHAR (128),
    usersPwd VARCHAR (128)
);
CREATE table classes(
    classesID INT  AUTO_INCREMENT PRIMARY KEY,
    classesName VARCHAR (128)
);
CREATE table students(
    studentsID int AUTO_INCREMENT ,
    studentsFName VARCHAR (50),
    stusentsLName VARCHAR (50),
    studentsAddress VARCHAR (100),
    studentsGender VARCHAR (50),
    studentsBirthday VARCHAR (50),
    studentsPhone INT,
    PRIMARY KEY (studentsID)
);
CREATE table teachers (
    teachersID int AUTO_INCREMENT PRIMARY KEY,
    teachersFName VARCHAR (128),
    teachersLName VARCHAR (128),
    teachersAddress VARCHAR (128),
    teachersPhone int (10)
);
CREATE table assignments(
    assignmentsID INT PRIMARY KEY   AUTO_INCREMENT ,
    assignmentsTitle VARCHAR (128),
    assignmentsDesc longtext
);
DROP TABLE assignments;
CREATE table assignments(
    assignmentsID INT PRIMARY KEY   AUTO_INCREMENT ,
    assignmentsClassID INT ,
    assignmentsTitle VARCHAR (128),
    assignmentsDesc longtext,
    FOREIGN KEY (assignmentsClassID) REFERENCES classes(classesID)
);
DROP table students;
CREATE table students(
    studentsID int PRIMARY KEY  ,
    studentsClassID int,
    studentsFName VARCHAR (50),
    stusentsLName VARCHAR (50),
    studentsAddress VARCHAR (100),
    studentsGender VARCHAR (50),
    studentsBirthday DATE ,
    studentsPhone INT,
    FOREIGN KEY (studentsID) REFERENCES users(usersID),
    FOREIGN key (studentsCLassID) REFERENCES classes(classesID)
);
DROP table teachers;
CREATE table teachers (
    teachersID int PRIMARY KEY,
    teachersClassID int,
    teachersFName VARCHAR (128),
    teachersLName VARCHAR (128),
    teachersAddress VARCHAR (128),
    teachersPhone int (10),
    FOREIGN KEY (teachersID) REFERENCES users(usersID),
    FOREIGN key (teachersClassID) REFERENCES classes(ClassesID)
);
DROP table assignments;
CREATE table assignments(
    assignmentsID INT PRIMARY KEY   AUTO_INCREMENT ,
    assignmentsClassID INT ,
    assignmentsTitle tinytext,
    assignmentsDesc longtext,
    FOREIGN key (assignmentsClassID) REFERENCES classes(classesID)
);
insert into classes values (1,'ada_lovelace'),
(2,'margaret_hamelton'),
(3,'alan_turing');
INSERT INTO users values(1,1,'admin@gmail.com','imadmin','123admin'),
(2,2,'first_teacher@gmal.com','imteacher1','1teacher'),
(3,2,'second_teacher@gmail.com','imteacher2','2teacher'),
(4,2,'third_teacher@gmail.com','imteacher3','3teacher'),
(5,3,'first_student@gmail.com','imstudent1','1student'),
(6,3,'second_student@gmail.com','imstudent2','2student'),
(7,3,'third_student@gmail.com','imstudent3','3student'),
(8,3,'fourth_student@gmail.com','imstudent4','4student'),
(9,3,'fifth_student@gmail.com','imstudent5','5student'),
(10,3,'sixth_student@gmail.com','imsyudent6','6student'),
(11,3,'seventh_student@gmail.com','imstudent7','7student'),
(12,3,'eighth_student@gmail.com','imstudent8','8student'),
(13,3,'ninth_student@gmail.com','imstudent9','9student');

INSERT into students 
values (5,1,'yassine','elhoubi','addressyassineaddress','male','05-08-1977',0687654323),
        (6,1,'aymen','dara',"addressaymenadress",'male','09-09-8787',0998877665),
        (7,1,'yassine','elhoubi','addressyassineaddress','male','05-08-1977',0687654323);
DELETE from students WHERE studentsID=7;
INSERT INTO students
values (7,1,'mohamed','idbihi','addressidbihiaddres','male','07-04-1990',0976542378),
        (8,2,'hicham','kamouni','addresshichamaddress','male','09-02-1989',0182736453),
        (9,2,'imane','rkhis','addressimanaddress','female','20-09-1872',0987768855),
        (10,2,'othman','mosataf','addressothmanaddress','male','30-12-2319',0897659899),
        (11,3,'issmail','mnifil','addressmnifeladdress','male','09-23-1998',0876664433),
        (12,3,'othman','maacha','addressmaachaadress','male','19-11-2000',0661778855),
        (13,3,'moncef','elatlassi','addressciggyaddress','male','23-04-2002',0787989898);
INSERT INTO teachers
values (2,1,'fatimaezzahra','essadraoui','addressteacheraddress',0676897655),
        (3,2,'ayoube','charef','addressayoubadress',0687567799),
        (4,3,'youness','echadini','addressyounessaddress',0656667788);

insert INTO assignments 
values (1,1,'first_assignments','aczunziczh zhc hz chz chz ch zhc zjc zhe hz hz chez ch zejh zjecaozjd az daijz da dazd'),
        (2,1,'second-assignments','oisdcsd csdj sjv sd vsdfpoze sdoivjsdiv,fdv sdvposkzv sdpsd,sd sdpf, posdfposd posdkfp'),
        (3,2,'third-assignments','oqsdoizdjfoizef zeof zef zef zedozef,e zef,sdsfk,zf zefk,zeofkzpejfer,fz efzoforifjzifnzf '),
        (4,2,'fourth-assignments','iuahzidhad zdoizee, ziefuzof,z zeifjzefizef zefzefzeijfzef zefzefze fzefzeijzeoifzef zeifjzef '),
        (5,3,'fifth-assignments','aoizdjoied zeonzef zeof zefze fzefzofzoej fzeojf zeof zejf zefjozefjzelizef oefjnzefzej zefoze f'),
        (6,3,'sixth-assignments','jgjgjg goijoijer uiehrgjer  erogh oiejrg inerg lierg negneg egie ergpejrg roijerg ergpoerg eprijg ');
UPDATE students
set studentsBirthday = '1997-08-05' 
WHERE studentsID = 5;
select * from students;

select * from students where studentsClassID = 1;
SELECT * from students JOIN classes on students.studentsClassID = classes.classesID WHERE classes.classesID = 2;
SELECT students.stusentsLName,students.studentsFName FROM students WHERE students.studentsID = 11;
SELECT students.stusentsLName,students.studentsFName,classes.classesName FROM students,classes WHERE students.studentsID = 11 and students.studentsClassID = classes.classesID;
SELECT COUNT(studentsID)
FROM students;
