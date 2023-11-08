         
create table Student (
  	id int identity primary key,
	FirstName VARCHAR(50),
	LastName VARCHAR(50),
	Email VARCHAR(50),
	BirthDate DATE
);


  
insert into Student   values ('Ky', 'Coling', 'kcoling0@prnewswire.com', '2021-09-02 ')
insert into Student   values ('Rodrigo', 'Chevolleau', 'rchevolleau1@patch.com', '2022-01-16 ')
insert into Student   values ('Ethelyn', 'Merle', 'emerle2@macromedia.com', '2021-06-30 ')
insert into Student   values ('Zacharias', 'Vobes', 'zvobes3@wufoo.com', '2021-11-12 ')
insert into Student   values ('Johannes', 'Selway', 'jselway4@scientificamerican.com', '2021-11-01 ')
insert into Student   values ('Franklin', 'Brisley', 'fbrisley5@home.pl', '2021-12-12 ')
insert into Student   values ('Twyla', 'Hurworth', 'thurworth6@mashable.com', '2022-02-10 ')
insert into Student   values ('Maryanna', 'Garstan', 'mgarstan7@census.gov', '2021-08-09 ')
insert into Student   values ('Shandeigh', 'Volette', 'svolette8@fotki.com', '2021-12-31 ')
insert into Student   values ('Phylis', 'Huston', 'phuston9@quantcast.com', '2021-05-07' )               
               
  


create table Achievements (
  	id int identity primary key,
  	Assesment int not null,
	StudentId INT FOREIGN key references Student(id)
);
insert into Achievements (Assesment, StudentId) values (2, 3);
insert into Achievements (Assesment, StudentId) values (7, 5);
insert into Achievements (Assesment, StudentId) values (6, 1);
insert into Achievements (Assesment, StudentId) values (11, 1);
insert into Achievements (Assesment, StudentId) values (6, 1);
insert into Achievements (Assesment, StudentId) values (1, 4);
insert into Achievements (Assesment, StudentId) values (3, 7);
insert into Achievements (Assesment, StudentId) values (4, 6);
insert into Achievements (Assesment, StudentId) values (1, 8);
insert into Achievements (Assesment, StudentId) values (12, 6);

SELECT *
FROM STUDENT AS S  JOIN Achievements AS A 
ON S.ID = A.StudentId

SELECT *
FROM STUDENT AS S  JOIN Achievements AS A 
ON S.ID = A.StudentId

SELECT *
FROM STUDENT AS S LEFT JOIN Achievements AS A 
ON S.ID = A.StudentId

SELECT *
FROM STUDENT AS S RIGHT JOIN Achievements AS A 
ON S.ID = A.StudentId


			   -- MY QUERY

CREATE table students (
 id int identity primary key,
   fullname nvarchar(100) not null,
   bdate datetime not null
)

CREATE table groups (
 id int identity primary key,
   groupname nvarchar(100) not null
)

create table groupsstudents (
 id int identity primary key,
   groupsid int foreign key references groups(id),
   studentsid int foreign key references students(id)
)

insert into students (fullname, bdate) values ('Culley Bonellie', '2007-04-30 17:37:23');
insert into students (fullname, bdate) values ('Lyndsay Proger', '2005-05-07 21:15:45');
insert into students (fullname, bdate) values ('Faustine Waldera', '2005-07-30 17:10:30');
insert into students (fullname, bdate) values ('Waldemar Enevoldsen', '2005-08-16 01:29:27');
insert into students (fullname, bdate) values ('Junina Petrina', '2005-09-25 12:11:29');
insert into students (fullname, bdate) values ('Jacquenette Haysey', '2006-09-08 23:54:48');
insert into students (fullname, bdate) values ('Natala Ruddiforth', '2006-07-18 03:10:05');
insert into students (fullname, bdate) values ('Brant Tancock', '2006-11-21 09:56:18');
insert into students (fullname, bdate) values ('Jolie Narey', '2007-03-30 22:05:28');
insert into students (fullname, bdate) values ('Bengt Westwick', '2005-06-21 20:36:57');
insert into students (fullname, bdate) values ('Gwenora Whittaker', '2006-07-31 21:37:43');
insert into students (fullname, bdate) values ('Marnia Lindsley', '2005-08-26 17:56:19');
insert into students (fullname, bdate) values ('Maryrose Tombling', '2005-09-21 03:08:10');
insert into students (fullname, bdate) values ('Ethe Noblet', '2006-12-15 20:23:39');
insert into students (fullname, bdate) values ('Darn Gleave', '2006-10-29 07:13:11');
insert into students (fullname, bdate) values ('Bartholemy Churm', '2006-12-12 07:52:59');
insert into students (fullname, bdate) values ('Amelia Jeannon', '2006-10-24 08:43:27');
insert into students (fullname, bdate) values ('Cyb Lewtey', '2006-12-11 10:21:59');
insert into students (fullname, bdate) values ('Harrison Paynton', '2005-10-18 02:50:58');
insert into students (fullname, bdate) values ('Cece Ody', '2006-08-24 12:08:33');


insert into groups (groupname) values ('SDP-202');
insert into groups (groupname) values ('SDP-222');
insert into groups (groupname) values ('SDP-221');
insert into groups (groupname) values ('SDP-220');
insert into groups (groupname) values ('SEP-202');
insert into groups (groupname) values ('SEP-222');
insert into groups (groupname) values ('SEP-221');
insert into groups (groupname) values ('SEP-220');


insert into groupsstudents (groupsid, studentsid) values (1, 1);
insert into groupsstudents (groupsid, studentsid) values (1, 2);
insert into groupsstudents (groupsid, studentsid) values (1, 3);

insert into groupsstudents (groupsid, studentsid) values (2, 7);
insert into groupsstudents (groupsid, studentsid) values (2, 8);
insert into groupsstudents (groupsid, studentsid) values (2, 9);

SELECT *
FROM groups
AS G JOIN groupsstudents AS GS
ON GS.groupsid = G.id JOIN STUDENTS AS S
ON GS.studentsid = S.id
WHERE groupname LIKE 'SDP-222'

SELECT G.groupname, COUNT(*) AS 'COUNT'
FROM groups
AS G JOIN groupsstudents AS GS
ON GS.groupsid = G.id JOIN STUDENTS AS S
ON GS.studentsid = S.id
GROUP BY G.groupname


--CREATE INSERT
create table author (
	id int identity primary key,
  	fio nvarchar(100) not null,
  	bdate datetime
)

insert into author (fio, bdate) values ('Ninnetta Tanfield', '1995-08-11');
insert into author (fio, bdate) values ('Aveline Brackley', '1976-08-13');
insert into author (fio, bdate) values ('Prue Fevers', '1956-09-02');
insert into author (fio, bdate) values ('Cherie Tinwell', '1965-01-01');
insert into author (fio, bdate) values ('Brear Widdocks', '1953-12-25');
insert into author (fio, bdate) values ('Katuscha Statter', '1979-07-09');
insert into author (fio, bdate) values ('Salomi Norledge', '1984-10-06');
insert into author (fio, bdate) values ('Geri Domerq', '1961-08-24');
insert into author (fio, bdate) values ('Florinda Harker', '1955-05-04');
insert into author (fio, bdate) values ('Wells Battye', '1958-06-12');
insert into author (fio, bdate) values ('Darwin Atwood', '1990-05-21');
insert into author (fio, bdate) values ('Tina Siege', '1960-05-29');
insert into author (fio, bdate) values ('Uriel Cheater', '1982-03-04');
insert into author (fio, bdate) values ('Braden Barnwell', '1989-07-19');
insert into author (fio, bdate) values ('Cynthie MacGarvey', '1973-04-27');
insert into author (fio, bdate) values ('Brock Kegan', '1963-02-14');
insert into author (fio, bdate) values ('Doris Garms', '1957-10-14');
insert into author (fio, bdate) values ('Bealle Mullis', '1955-03-31');
insert into author (fio, bdate) values ('Jose Warby', '1968-12-24');
insert into author (fio, bdate) values ('Merci Steanyng', '1990-08-03');
insert into author (fio, bdate) values ('Ros Harries', '1993-05-19');
insert into author (fio, bdate) values ('Avis Greystock', '2000-03-24');
insert into author (fio, bdate) values ('Onofredo Dyson', '1961-07-11');
insert into author (fio, bdate) values ('Millicent Kinzel', '1995-11-28');
insert into author (fio, bdate) values ('Kris Whiffin', '1972-10-07');

create table book (
	id int identity primary key,
  	bookName nvarchar(100) not null,
  	authorId int foreign key references author(id),
  	publicationYear datetime ,
  	isReturn bit default 0
)

insert into book (bookName, authorId, publicationYear) values ('Bytecard', 16, '2012-12-24');
insert into book (bookName, authorId, publicationYear) values ('Biodex', 3, '1991-12-20');
insert into book (bookName, authorId, publicationYear) values ('Veribet', 23, '1992-09-02');
insert into book (bookName, authorId, publicationYear) values ('Rank', 2, '2006-01-23');
insert into book (bookName, authorId, publicationYear) values ('Treeflex', 12, '2010-08-01');
insert into book (bookName, authorId, publicationYear) values ('Konklab', 12, '2006-09-06');
insert into book (bookName, authorId, publicationYear) values ('Latlux', 9, '2009-06-03');
insert into book (bookName, authorId, publicationYear) values ('Fix San', 6, '2001-05-28');
insert into book (bookName, authorId, publicationYear) values ('Flowdesk', 25, '2005-03-03');
insert into book (bookName, authorId, publicationYear) values ('Holdlamis', 2, '2011-07-23');
insert into book (bookName, authorId, publicationYear) values ('Daltfresh', 20, '2011-11-13');
insert into book (bookName, authorId, publicationYear) values ('Sonair', 19, '1997-06-12');
insert into book (bookName, authorId, publicationYear) values ('Latlux', 25, '1993-02-15');
insert into book (bookName, authorId, publicationYear) values ('Flexidy', 24, '2017-08-28');
insert into book (bookName, authorId, publicationYear) values ('Alphazap', 3, '2021-05-18');
insert into book (bookName, authorId, publicationYear) values ('Aerified', 17, '2014-02-25');
insert into book (bookName, authorId, publicationYear) values ('Y-find', 21, '2017-06-02');
insert into book (bookName, authorId, publicationYear) values ('Gembucket', 9, '2016-08-24');
insert into book (bookName, authorId, publicationYear) values ('Tres-Zap', 4, '1991-03-05');
insert into book (bookName, authorId, publicationYear) values ('Prodder', 3, '2016-07-12');
insert into book (bookName, authorId, publicationYear) values ('Job', 10, '2014-08-17');
insert into book (bookName, authorId, publicationYear) values ('Zontrax', 4, '2002-04-02');
insert into book (bookName, authorId, publicationYear) values ('Lotstring', 20, '1996-04-07');
insert into book (bookName, authorId, publicationYear) values ('Pannier', 8, '2017-03-18');
insert into book (bookName, authorId, publicationYear) values ('Sonair', 4, '1996-11-29');



create table reader (
	id int identity PRIMARY key,
  	fio nvarchar(100) not null,
  	bdate datetime not null,
  	phone nvarchar(20) not null,
  	address nvarchar(100) not null
)

insert into reader (fio, bdate, phone, address) values ('Wayne Kellaway', '2006-02-05', '323-628-8558', '556 Canary Court');
insert into reader (fio, bdate, phone, address) values ('Esma Hotson', '1994-01-13', '145-809-0865', '4257 Pankratz Trail');
insert into reader (fio, bdate, phone, address) values ('Bonnibelle Trippett', '2007-02-27', '573-825-6972', '82 Longview Trail');
insert into reader (fio, bdate, phone, address) values ('Ricky Cordon', '1992-08-27', '404-748-5013', '716 Petterle Circle');
insert into reader (fio, bdate, phone, address) values ('Baron True', '1998-12-12', '558-276-0074', '13101 Larry Park');
insert into reader (fio, bdate, phone, address) values ('Prudi Malling', '2005-05-03', '717-464-7204', '3 Prairie Rose Street');
insert into reader (fio, bdate, phone, address) values ('Ofella Cotman', '1992-12-18', '596-386-9180', '8 Upham Place');
insert into reader (fio, bdate, phone, address) values ('La verne Sedgebeer', '1986-06-21', '698-689-3428', '764 Continental Lane');
insert into reader (fio, bdate, phone, address) values ('Ladonna Chastang', '1990-09-04', '355-946-2816', '8 Cody Park');
insert into reader (fio, bdate, phone, address) values ('Ruthe Cordaroy', '1980-08-23', '832-157-1188', '7 Stuart Terrace');
insert into reader (fio, bdate, phone, address) values ('Weider Liepmann', '2009-11-23', '626-665-0970', '89941 4th Hill');
insert into reader (fio, bdate, phone, address) values ('Nichol Sedgeman', '2010-12-29', '413-583-8552', '038 Heffernan Crossing');
insert into reader (fio, bdate, phone, address) values ('Sheena Borge', '1997-01-31', '928-143-0808', '77 Havey Court');
insert into reader (fio, bdate, phone, address) values ('Hurley Morrant', '2007-10-15', '353-116-4533', '2 Luster Drive');
insert into reader (fio, bdate, phone, address) values ('Alyce Swinden', '2010-02-27', '414-466-1713', '9421 Union Terrace');
insert into reader (fio, bdate, phone, address) values ('Cyndy Powles', '2006-12-19', '625-985-2221', '1823 Vidon Crossing');
insert into reader (fio, bdate, phone, address) values ('Ardys Longhi', '1990-08-16', '117-481-3508', '3 Mariners Cove Place');
insert into reader (fio, bdate, phone, address) values ('Odo Trengrove', '1991-04-12', '939-660-1687', '0361 Lakewood Gardens Crossing');
insert into reader (fio, bdate, phone, address) values ('Elene Duckhouse', '1990-10-24', '317-891-1023', '3 Village Green Court');
insert into reader (fio, bdate, phone, address) values ('Dav Connealy', '1987-11-23', '593-188-7709', '0 Schiller Avenue');
insert into reader (fio, bdate, phone, address) values ('Ardisj McKinty', '1984-04-11', '877-732-7903', '4990 Oxford Place');
insert into reader (fio, bdate, phone, address) values ('Ellswerth Joll', '1989-11-19', '564-980-3496', '49 Becker Crossing');
insert into reader (fio, bdate, phone, address) values ('Hadley Charette', '2001-09-12', '314-253-8626', '4 Hoffman Street');
insert into reader (fio, bdate, phone, address) values ('Yetty Ebbotts', '1998-02-13', '835-882-4129', '16 Division Terrace');
insert into reader (fio, bdate, phone, address) values ('Suzette Shercliff', '1998-10-24', '776-838-0144', '89 Anderson Trail');


create table orders (
	id int identity primary key,
  	bookId int foreign key references book(id),
  	readerId int foreign key references reader(id),
  	startDate datetime ,
  	endDate datetime,
  	isBlackList bit default 0
)


insert into orders (startDate, bookId, readerId) values ('2021-07-13', 24, 4);
insert into orders (startDate, bookId, readerId) values ('2017-05-08', 1, 8);
insert into orders (startDate, bookId, readerId) values ('2017-10-23', 15, 13);
insert into orders (startDate, bookId, readerId) values ('2016-07-19', 16, 21);
insert into orders (startDate, bookId, readerId) values ('2012-01-15', 20, 15);
insert into orders (startDate, bookId, readerId) values ('2016-12-19', 7, 12);
insert into orders (startDate, bookId, readerId) values ('2012-08-07', 20, 9);
insert into orders (startDate, bookId, readerId) values ('2014-01-07', 14, 21);
insert into orders (startDate, bookId, readerId) values ('2015-08-04', 24, 22);
insert into orders (startDate, bookId, readerId) values ('2020-12-06', 17, 9);
insert into orders (startDate, bookId, readerId) values ('2013-07-05', 20, 14);
insert into orders (startDate, bookId, readerId) values ('2015-07-10', 23, 11);
insert into orders (startDate, bookId, readerId) values ('2021-10-05', 8, 12);
insert into orders (startDate, bookId, readerId) values ('2023-11-13', 7, 22);
insert into orders (startDate, bookId, readerId) values ('2015-04-24', 19, 18);
insert into orders (startDate, bookId, readerId) values ('2016-06-28', 12, 22);
insert into orders (startDate, bookId, readerId) values ('2018-10-20', 1, 4);
insert into orders (startDate, bookId, readerId) values ('2021-04-08', 25, 21);
insert into orders (startDate, bookId, readerId) values ('2015-04-18', 8, 17);
insert into orders (startDate, bookId, readerId) values ('2016-10-20', 14, 9);
insert into orders (startDate, bookId, readerId) values ('2016-11-25', 6, 12);
insert into orders (startDate, bookId, readerId) values ('2016-09-25', 7, 17);
insert into orders (startDate, bookId, readerId) values ('2016-04-30', 7, 8);
insert into orders (startDate, bookId, readerId) values ('2022-06-09', 20, 4);
insert into orders (startDate, bookId, readerId) values ('2020-06-06', 24, 9);

insert into orders (startDate, bookId, readerId) values ('2023-01-05', 13, 8);
insert into orders (startDate, bookId, readerId) values ('2022-11-17', 19, 2);
insert into orders (startDate, bookId, readerId) values ('2022-02-17', 3, 10);
insert into orders (startDate, bookId, readerId) values ('2023-10-09', 25, 8);
insert into orders (startDate, bookId, readerId) values ('2022-05-28', 12, 24);
insert into orders (startDate, bookId, readerId) values ('2023-12-25', 20, 18);
insert into orders (startDate, bookId, readerId) values ('2022-06-12', 8, 16);
insert into orders (startDate, bookId, readerId) values ('2023-10-25', 9, 5);
insert into orders (startDate, bookId, readerId) values ('2022-06-23', 8, 16);
insert into orders (startDate, bookId, readerId) values ('2023-11-12', 1, 22);
insert into orders (startDate, bookId, readerId) values ('2023-10-02', 5, 24);
insert into orders (startDate, bookId, readerId) values ('2022-02-20', 22, 3);
insert into orders (startDate, bookId, readerId) values ('2022-03-28', 7, 4);
insert into orders (startDate, bookId, readerId) values ('2022-08-25', 3, 2);
insert into orders (startDate, bookId, readerId) values ('2022-08-10', 9, 13);
insert into orders (startDate, bookId, readerId) values ('2022-05-12', 8, 16);
insert into orders (startDate, bookId, readerId) values ('2023-07-28', 1, 12);
insert into orders (startDate, bookId, readerId) values ('2023-06-13', 9, 24);
insert into orders (startDate, bookId, readerId) values ('2023-10-21', 3, 8);
insert into orders (startDate, bookId, readerId) values ('2023-09-02', 1, 23);
insert into orders (startDate, bookId, readerId) values ('2023-01-21', 20, 7);
insert into orders (startDate, bookId, readerId) values ('2022-01-14', 10, 4);
insert into orders (startDate, bookId, readerId) values ('2022-08-25', 3, 8);
insert into orders (startDate, bookId, readerId) values ('2022-10-02', 15, 19);
insert into orders (startDate, bookId, readerId) values ('2022-03-05', 7, 12);



update book
set isreturn = 1
where id % 3 = 2

update orders
set isBlackList = 1
where id % 10 = 0

update orders
set endDate = dateadd(day, 30, startdate)

SELECT * 
FROM AUTHOR AS A JOIN BOOK AS B
ON B.authorId = A.id JOIN ORDERS AS O
ON O.bookId = B.id JOIN READER AS R 
ON O.readerId = R.id 

SELECT A.FIO, COUNT(*)
FROM author AS A JOIN BOOK AS B
ON B.authorId = A.ID
GROUP BY A.FIO

SELECT A.FIO, COUNT(*)
FROM author AS A JOIN BOOK AS B
ON B.authorId = A.ID JOIN ORDERS AS O ON O.bookId = B.ID 
GROUP BY A.FIO

SELECT A.FIO, COUNT(*)
FROM author AS A JOIN BOOK AS B
ON B.authorId = A.ID JOIN ORDERS AS O ON O.bookId = B.ID 
WHERE B.ISRETURN = 0
GROUP BY A.FIO

SELECT R.PHONE, COUNT(*)
FROM orders AS O JOIN READER AS R
ON R.ID = O.readerId
GROUP BY R.phone

SELECT B.BOOKNAME, B.PUBLICATIONYEAR
FROM BOOK AS B JOIN ORDERS AS O
ON O.bookId = B.ID JOIN READER AS R 
ON R.ID = O.readerId 
WHERE R.FIO = 'Ricky Gordon'

SELECT R.FIO
FROM AUTHOR AS A JOIN BOOK AS B
ON B.authorId = A.ID JOIN ORDERS AS O
ON O.bookId = B.ID  JOIN READER AS R
ON R.ID = O.readerId
WHERE R.FIO LIKE A.FIO
OR YEAR(R.bdate) = YEAR(A.bdate)

SELECT R.FIO , COUNT(*) AS C
FROM ORDERS AS O JOIN READER AS R
ON R.ID = O.READERID 
GROUP BY R.FIO
HAVING COUNT(*) > 4
ORDER BY C DESC

SELECT A.FIO, COUNT(*) AS C
FROM author AS A JOIN BOOK AS B
ON B.authorId = A.id
GROUP BY A.fio
HAVING COUNT(*) = 3
ORDER BY A.fio


SELECT A.FIO, COUNT(*) AS C
FROM author AS A JOIN BOOK AS B
ON B.authorId = A.id
WHERE B.bookName LIKE '%a%'
GROUP BY A.fio
HAVING COUNT(*) = 3
ORDER BY A.fio



--SECOND SQL

-- фитнес клуб

create table section 
(
	id int identity primary key,
	name nvarchar(50) not null unique
)

create table class 
(
	id int identity primary key,
	name nvarchar(50) not null unique
)

create table instructor
(
	id int identity primary key,
	fio nvarchar(100) not null,
	nick nvarchar(15) not null,
	workExperience int not null,
	price int not null,
	sectionId int foreign key references section(id),
	classId int foreign key references class(id)
)

create table client 
(
	id int identity primary key,
	name nvarchar(50) not null unique,
	instructorId int foreign key references instructor(id)
) 

insert into section (name) values ('swim');
insert into section (name) values ('box');
insert into section (name) values ('run');
insert into section (name) values ('cardio');
insert into section (name) values ('gym');



insert into class (name) values ('economy');
insert into class (name) values ('comfort');
insert into class (name) values ('business');


insert into instructor (fio, nick, workExperience, price, sectionId, classId) values ('Alan Boarder', 'Alan', 4, 73574, 1, 1);
insert into instructor (fio, nick, workExperience, price, sectionId, classId) values ('Marc Duns', 'Marc', 4, 32254, 1, 2);
insert into instructor (fio, nick, workExperience, price, sectionId, classId) values ('Sianna Bonar', 'Sianna', 7, 41470, 5, 3);
insert into instructor (fio, nick, workExperience, price, sectionId, classId) values ('Modestia Mattheissen', 'Modestia', 11, 109728, 4, 1);
insert into instructor (fio, nick, workExperience, price, sectionId, classId) values ('Kristen Tewkesberry', 'Kristen', 7, 80861, 3, 1);
insert into instructor (fio, nick, workExperience, price, sectionId, classId) values ('Hilda Calwell', 'Hilda', 4, 27796, 2, 3);
insert into instructor (fio, nick, workExperience, price, sectionId, classId) values ('Brnaby Sudworth', 'Brnaby', 4, 70721, 5, 2);
insert into instructor (fio, nick, workExperience, price, sectionId, classId) values ('Consolata Hardingham', 'Consolata', 3, 70412, 1, 3);
insert into instructor (fio, nick, workExperience, price, sectionId, classId) values ('Kym Trebbett', 'Kym', 5, 32641, 5, 3);
insert into instructor (fio, nick, workExperience, price, sectionId, classId) values ('Camala Gallihawk', 'Camala', 5, 29543, 3, 1);



insert into client (name, instructorId) values ('Weston Spellworth', 8);
insert into client (name, instructorId) values ('Staffard Giraldez', 1);
insert into client (name, instructorId) values ('Wolfy Curnick', 1);
insert into client (name, instructorId) values ('Abbie Vacher', 10);
insert into client (name, instructorId) values ('Harrison Earles', 9);
insert into client (name, instructorId) values ('Letta O''Suaird', 3);
insert into client (name, instructorId) values ('Luke Gaymer', 10);
insert into client (name, instructorId) values ('Ivie Gabbetis', 6);
insert into client (name, instructorId) values ('Pen Lakenden', 4);
insert into client (name, instructorId) values ('Porty Rusling', 9);
insert into client (name, instructorId) values ('Chicky Buckner', 2);
insert into client (name, instructorId) values ('Charmian Chislett', 8);
insert into client (name, instructorId) values ('Dasya Skerman', 10);
insert into client (name, instructorId) values ('Brittne Birks', 2);
insert into client (name, instructorId) values ('Theresa Hulse', 2);
insert into client (name, instructorId) values ('Amii Downing', 9);
insert into client (name, instructorId) values ('Jillayne Crown', 10);
insert into client (name, instructorId) values ('Kort Choulerton', 3);
insert into client (name, instructorId) values ('Oren Jager', 3);
insert into client (name, instructorId) values ('Roxanne Midgely', 7);
insert into client (name, instructorId) values ('Madge Dutnell', 3);
insert into client (name, instructorId) values ('Edee Minero', 9);
insert into client (name, instructorId) values ('Trueman Chavrin', 6);
insert into client (name, instructorId) values ('Wayne Bourdice', 3);
insert into client (name, instructorId) values ('Elnore Anfonsi', 6);
insert into client (name, instructorId) values ('Panchito Buttriss', 10);
insert into client (name, instructorId) values ('Teresita Apedaile', 10);
insert into client (name, instructorId) values ('Mag O'' Loughran', 8);
insert into client (name, instructorId) values ('Tobie Caile', 8);
insert into client (name, instructorId) values ('Marissa MacTeague', 9);
insert into client (name, instructorId) values ('Thor Mayger', 5);
insert into client (name, instructorId) values ('Jeremy Waddington', 9);
insert into client (name, instructorId) values ('Domeniga Cicculi', 3);
insert into client (name, instructorId) values ('Tan Murcott', 8);
insert into client (name, instructorId) values ('Elfrieda Commander', 2);
insert into client (name, instructorId) values ('Celestine Seif', 5);
insert into client (name, instructorId) values ('Stepha Placide', 3);
insert into client (name, instructorId) values ('Ally Medforth', 1);
insert into client (name, instructorId) values ('Yard Coventry', 10);
insert into client (name, instructorId) values ('Townie Sodor', 3);
insert into client (name, instructorId) values ('Sherwood Larway', 8);
insert into client (name, instructorId) values ('Ivette Gludor', 10);
insert into client (name, instructorId) values ('Abbott Comusso', 8);
insert into client (name, instructorId) values ('Aura Briffett', 3);
insert into client (name, instructorId) values ('Madalena Sporle', 2);
insert into client (name, instructorId) values ('Sholom Albiston', 10);
insert into client (name, instructorId) values ('Derron Garrad', 7);
insert into client (name, instructorId) values ('Desirae Whitlow', 10);
insert into client (name, instructorId) values ('Francyne Yule', 9);
insert into client (name, instructorId) values ('Anissa Camel', 9);
insert into client (name, instructorId) values ('Sal Ayrs', 2);
insert into client (name, instructorId) values ('Sharai Barns', 2);
insert into client (name, instructorId) values ('Jean Antyshev', 1);
insert into client (name, instructorId) values ('Torrey Keyhoe', 7);
insert into client (name, instructorId) values ('Lottie Van der Velde', 5);
insert into client (name, instructorId) values ('Eula Amyes', 2);
insert into client (name, instructorId) values ('Billi Shortall', 3);
insert into client (name, instructorId) values ('Ferris Pedrocco', 10);
insert into client (name, instructorId) values ('Nani Bockh', 5);
insert into client (name, instructorId) values ('Care Merigeau', 5);
insert into client (name, instructorId) values ('Matt Swett', 7);
insert into client (name, instructorId) values ('Guilbert Bosman', 9);
insert into client (name, instructorId) values ('Merrel Edmeads', 6);
insert into client (name, instructorId) values ('Urbano Handrick', 10);
insert into client (name, instructorId) values ('Iosep Kippax', 8);
insert into client (name, instructorId) values ('Doralynn Sharland', 10);
insert into client (name, instructorId) values ('Melamie Foggarty', 1);
insert into client (name, instructorId) values ('Willamina Elen', 2);
insert into client (name, instructorId) values ('Colver Ruddom', 2);
insert into client (name, instructorId) values ('Susanna Glencross', 10);
insert into client (name, instructorId) values ('Ricoriki Cookes', 4);
insert into client (name, instructorId) values ('Padraig Pincked', 3);
insert into client (name, instructorId) values ('Lammond Downing', 2);
insert into client (name, instructorId) values ('Crystal Middlemist', 7);
insert into client (name, instructorId) values ('Christie Bossingham', 7);
insert into client (name, instructorId) values ('Marthe Eager', 9);
insert into client (name, instructorId) values ('Demetra Beccero', 9);
insert into client (name, instructorId) values ('Rodge Fawthrop', 1);
insert into client (name, instructorId) values ('Gabriell Pitkin', 9);
insert into client (name, instructorId) values ('Cam Sole', 8);
insert into client (name, instructorId) values ('Nikoletta Lindenfeld', 4);
insert into client (name, instructorId) values ('Holly Greenard', 10);
insert into client (name, instructorId) values ('Aldwin Colthard', 7);
insert into client (name, instructorId) values ('Darya Cornelissen', 5);
insert into client (name, instructorId) values ('Billi Deacon', 10);
insert into client (name, instructorId) values ('Brandi Edworthy', 5);
insert into client (name, instructorId) values ('Whitby Mathey', 1);
insert into client (name, instructorId) values ('Evonne Horry', 9);
insert into client (name, instructorId) values ('Estel Sanper', 9);
insert into client (name, instructorId) values ('Candis Archibald', 8);
insert into client (name, instructorId) values ('Nobe Dils', 2);
insert into client (name, instructorId) values ('Shane Maguire', 10);
insert into client (name, instructorId) values ('Kelsey McGettrick', 6);
insert into client (name, instructorId) values ('Christabel Setchfield', 5);
insert into client (name, instructorId) values ('Shantee Cometti', 10);
insert into client (name, instructorId) values ('Chrystal Hazle', 2);
insert into client (name, instructorId) values ('Adela Clampett', 1);
insert into client (name, instructorId) values ('Etienne Methingam', 6);
insert into client (name, instructorId) values ('Alissa Malcolm', 5);
insert into client (name, instructorId) values ('Kiley Danev', 8);

select * 
from instructor as i 
join client as c 
on c.instructorId = i.id 
join section as s	
on i.sectionId = s.id
join class as cl 
on i.classId = cl.id

select i.fio, COUNT(*) as c
from instructor as i
join client as c 
on c.instructorId = i.id 
group by i.fio
having COUNT(*) > 10


select i.fio, COUNT(*) as c
from instructor as i
join client as c 
on c.instructorId = i.id 
group by i.fio
having COUNT(*) > 10


select s.name, COUNT(*) as c
from instructor as i
join client as c 
on c.instructorId = i.id 
join section as s
on i.sectionId = s.id
where c.name like '%e%'
GROUP BY s.name

select cl.name, sum(i.price)
from instructor as i
join client as c 
on c.instructorId = i.id 
join class as cl
on i.classId = cl.id
where i.workExperience > 3
GROUP BY cl.name
having sum(i.price) > 1000



--Практическая работа


CREATE TABLE FACULTIES(
ID INT IDENTITY PRIMARY KEY,
NAME NVARCHAR(50) NOT NULL
)
insert into FACULTIES (NAME) values ('Narrowleaf Stoneseed');
insert into FACULTIES (NAME) values ('Weeping Bottlebrush');
insert into FACULTIES (NAME) values ('Pinellia');
insert into FACULTIES (NAME) values ('Horsehair Lichen');
insert into FACULTIES (NAME) values ('Baldwin''s Ironweed');
insert into FACULTIES (NAME) values ('Field Smartweed');
insert into FACULTIES (NAME) values ('Brittled Gum');
insert into FACULTIES (NAME) values ('Red Valerian');
insert into FACULTIES (NAME) values ('Yellow Daylily');
insert into FACULTIES (NAME) values ('Howell''s Pussytoes');
insert into FACULTIES (NAME) values ('Great Basin Brome');
insert into FACULTIES (NAME) values ('Grove Hawthorn');
insert into FACULTIES (NAME) values ('Triplerib Milkvetch');
insert into FACULTIES (NAME) values ('Douglas'' Thistle');
insert into FACULTIES (NAME) values ('Iliau');
insert into FACULTIES (NAME) values ('Intermountain Bladderpod');
insert into FACULTIES (NAME) values ('Climbing Wartclub');
insert into FACULTIES (NAME) values ('European Umbrella Milkwort');
insert into FACULTIES (NAME) values ('Angelwing Jasmine');
insert into FACULTIES (NAME) values ('Barnacle Lichen');
insert into FACULTIES (NAME) values ('Mexican Cryptantha');
insert into FACULTIES (NAME) values ('Gray Field Speedwell');
insert into FACULTIES (NAME) values ('Southern Fimbry');
insert into FACULTIES (NAME) values ('Falling Dewberry');
insert into FACULTIES (NAME) values ('Anil De Pasto');
insert into FACULTIES (NAME) values ('Dotted Orchid');
insert into FACULTIES (NAME) values ('Scandix');
insert into FACULTIES (NAME) values ('Robies Cocksfoot');
insert into FACULTIES (NAME) values ('Magellan''s Sphagnum');
insert into FACULTIES (NAME) values ('Presidio Manzanita');
insert into FACULTIES (NAME) values ('Mountain False Indigo');
insert into FACULTIES (NAME) values ('Miniature Woollystar');
insert into FACULTIES (NAME) values ('Fringed Willowherb');
insert into FACULTIES (NAME) values ('Sharpglume Brome');
insert into FACULTIES (NAME) values ('Loose Watermilfoil');
insert into FACULTIES (NAME) values ('Pleurocoronis');
insert into FACULTIES (NAME) values ('Rigid Didymodon Moss');
insert into FACULTIES (NAME) values ('Ceboruquillo');
insert into FACULTIES (NAME) values ('Adam''s Tree');
insert into FACULTIES (NAME) values ('Turkish Baby''s-breath');
insert into FACULTIES (NAME) values ('Carpenter''s Groundcherry');
insert into FACULTIES (NAME) values ('Florida Wild Indigo');
insert into FACULTIES (NAME) values ('Clustered Lady''s Slipper');
insert into FACULTIES (NAME) values ('Frye''s Limbella Moss');
insert into FACULTIES (NAME) values ('Ione Buckwheat');
insert into FACULTIES (NAME) values ('Amur Rose');
insert into FACULTIES (NAME) values ('Smallflower Bruguiera');
insert into FACULTIES (NAME) values ('Bletia');
insert into FACULTIES (NAME) values ('Purple Milkvetch');
insert into FACULTIES (NAME) values ('Spiny Naiad');

CREATE TABLE DEPARTMENTS(
ID INT IDENTITY PRIMARY KEY,
FINANCING INT NOT NULL,
NAME NVARCHAR(50) NOT NULL,
FACULTYID INT NOT NULL FOREIGN KEY REFERENCES FACULTIES
)
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (589091, 'edallyn0', 7);
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (961546, 'saldwick1', 29);
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (504002, 'bnias2', 40);
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (591669, 'hhastewell3', 9);
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (668062, 'sstanners4', 29);
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (766738, 'fhaysham5', 49);
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (839866, 'lchristall6', 14);
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (600461, 'cboast7', 17);
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (767372, 'keble8', 12);
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (628716, 'calejo9', 25);
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (715543, 'lhanmorea', 4);
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (740187, 'dbarwellb', 9);
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (768807, 'bfirkc', 34);
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (687204, 'jleydond', 31);
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (559282, 'ecollmane', 30);
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (998588, 'hbennief', 44);
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (615287, 'zcrackerg', 20);
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (946313, 'lyearneh', 23);
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (773449, 'esimmensi', 5);
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (562181, 'pshordj', 17);
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (635115, 'rhandrekk', 31);
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (582621, 'sskurml', 18);
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (829730, 'bguillartm', 20);
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (987035, 'gmcnivenn', 26);
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (771831, 'sputtocko', 24);
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (638021, 'jmacronaldp', 36);
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (848933, 'bswayslandq', 48);
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (951775, 'tdawtryr', 30);
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (519281, 'dwilbrahams', 26);
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (890792, 'kivisont', 10);
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (821408, 'igibbu', 8);
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (619665, 'dgoghinv', 24);
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (891600, 'hbourthoumieuxw', 14);
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (806464, 'cdimblebyx', 27);
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (916807, 'otrevorrowy', 5);
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (944123, 'bethelstonez', 23);
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (563127, 'jkarolovsky10', 35);
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (861285, 'phollingshead11', 19);
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (718448, 'csedgman12', 6);
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (882420, 'ltremollet13', 3);
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (663408, 'abank14', 29);
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (580752, 'cstarsmore15', 22);
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (882451, 'hdybell16', 8);
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (883638, 'gbronger17', 47);
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (553152, 'aamerici18', 41);
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (941469, 'kalthrope19', 10);
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (746621, 'jirwin1a', 22);
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (774940, 'lmerrin1b', 37);
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (668789, 'ncejka1c', 12);
insert into DEPARTMENTS (FINANCING, NAME, FACULTYID) values (950535, 'msymon1d', 37);

CREATE TABLE GROOPS(
ID INT IDENTITY PRIMARY KEY,
NAME NVARCHAR(50) NOT NULL,
YEAR DATETIME NOT NULL,
DEPARTMENTID INT NOT NULL FOREIGN KEY REFERENCES DEPARTMENTS
)

insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Trixi', 2004, 32);
insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Nichol', 2004, 7);
insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Roz', 2011, 6);
insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Arden', 2010, 50);
insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Goldina', 1999, 43);
insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Liane', 1967, 26);
insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Morissa', 2009, 12);
insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Anet', 2002, 9);
insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Mattie', 2007, 39);
insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Siouxie', 1994, 47);
insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Berri', 2010, 9);
insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Dorris', 2001, 1);
insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Iolande', 2008, 10);
insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Anabelle', 2004, 2);
insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Julita', 2007, 12);
insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Angeline', 1979, 21);
insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Berry', 1997, 23);
insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Gwennie', 2002, 41);
insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Mareah', 1999, 27);
insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Sonnie', 2012, 36);
insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Johna', 2009, 43);
insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Melany', 1998, 11);
insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Tess', 1992, 28);
insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Elnore', 1991, 37);
insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Florrie', 1997, 42);
insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Kelsi', 2009, 28);
insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Elsa', 2008, 13);
insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Nyssa', 2001, 12);
insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Junia', 2007, 10);
insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Franni', 2006, 41);
insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Shirlene', 2008, 48);
insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Orelle', 2012, 36);
insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Karoly', 1986, 7);
insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Binnie', 2008, 15);
insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Rhoda', 1989, 30);
insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Lelah', 2008, 37);
insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Fredrika', 1997, 19);
insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Dori', 1997, 31);
insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Etti', 2001, 4);
insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Glad', 2012, 35);
insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Jayme', 2002, 11);
insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Susanne', 2003, 24);
insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Desiri', 2009, 15);
insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Evangelin', 2001, 15);
insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Sophie', 2002, 13);
insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Melisande', 2009, 26);
insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Willy', 2004, 19);
insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Dodie', 1994, 50);
insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Elicia', 2007, 33);
insert into GROOPS (NAME, YEAR, DEPARTMENTID) values ('Pearl', 2000, 32);



CREATE TABLE TEACHERS(
ID INT IDENTITY PRIMARY KEY,
NAME NVARCHAR(50) NOT NULL,
SALARY INT NOT NULL,
SURNAME NVARCHAR(50) NOT NULL
)

insert into TEACHERS (NAME, SALARY, SURNAME) values ('Matthiew', 297889, 'Paish');
insert into TEACHERS (NAME, SALARY, SURNAME) values ('Julieta', 408975, 'Waddam');
insert into TEACHERS (NAME, SALARY, SURNAME) values ('Robby', 258278, 'Ledson');
insert into TEACHERS (NAME, SALARY, SURNAME) values ('Yorker', 374453, 'Arnow');
insert into TEACHERS (NAME, SALARY, SURNAME) values ('Lilli', 499446, 'Tierny');
insert into TEACHERS (NAME, SALARY, SURNAME) values ('Sallyann', 467239, 'O''Howbane');
insert into TEACHERS (NAME, SALARY, SURNAME) values ('Flemming', 320775, 'Kmietsch');
insert into TEACHERS (NAME, SALARY, SURNAME) values ('Constantine', 258106, 'Caldairou');
insert into TEACHERS (NAME, SALARY, SURNAME) values ('Allison', 445407, 'Balstone');
insert into TEACHERS (NAME, SALARY, SURNAME) values ('Mada', 493350, 'Zamorano');
insert into TEACHERS (NAME, SALARY, SURNAME) values ('Gerrilee', 420517, 'Benka');
insert into TEACHERS (NAME, SALARY, SURNAME) values ('Katina', 416884, 'Knapp');
insert into TEACHERS (NAME, SALARY, SURNAME) values ('Sarajane', 172639, 'Crabb');
insert into TEACHERS (NAME, SALARY, SURNAME) values ('Willyt', 470076, 'Walczynski');
insert into TEACHERS (NAME, SALARY, SURNAME) values ('Emmye', 242847, 'Kinson');
insert into TEACHERS (NAME, SALARY, SURNAME) values ('Myranda', 475488, 'Devlin');
insert into TEACHERS (NAME, SALARY, SURNAME) values ('Lacey', 314780, 'Jopling');
insert into TEACHERS (NAME, SALARY, SURNAME) values ('Clementina', 338135, 'Sunnucks');
insert into TEACHERS (NAME, SALARY, SURNAME) values ('Terri-jo', 441107, 'Borris');
insert into TEACHERS (NAME, SALARY, SURNAME) values ('Jorie', 348824, 'Ingles');
insert into TEACHERS (NAME, SALARY, SURNAME) values ('Fifine', 265405, 'Hebron');
insert into TEACHERS (NAME, SALARY, SURNAME) values ('Verna', 472288, 'Baldwin');
insert into TEACHERS (NAME, SALARY, SURNAME) values ('Allegra', 117519, 'Drewett');
insert into TEACHERS (NAME, SALARY, SURNAME) values ('Samuele', 167461, 'Marcone');
insert into TEACHERS (NAME, SALARY, SURNAME) values ('Thornie', 206311, 'Szepe');
insert into TEACHERS (NAME, SALARY, SURNAME) values ('Jelene', 284557, 'Graham');
insert into TEACHERS (NAME, SALARY, SURNAME) values ('Carmella', 169014, 'Waeland');
insert into TEACHERS (NAME, SALARY, SURNAME) values ('Gerek', 338337, 'Elkins');
insert into TEACHERS (NAME, SALARY, SURNAME) values ('Chrissy', 196039, 'Seccombe');
insert into TEACHERS (NAME, SALARY, SURNAME) values ('Alma', 253390, 'Ugoletti');
insert into TEACHERS (NAME, SALARY, SURNAME) values ('Raphaela', 275109, 'Paffitt');
insert into TEACHERS (NAME, SALARY, SURNAME) values ('Joela', 218951, 'Wegener');
insert into TEACHERS (NAME, SALARY, SURNAME) values ('Gerianna', 366159, 'Inglese');
insert into TEACHERS (NAME, SALARY, SURNAME) values ('Ayn', 210967, 'Darch');
insert into TEACHERS (NAME, SALARY, SURNAME) values ('Durward', 445902, 'Fleet');
insert into TEACHERS (NAME, SALARY, SURNAME) values ('Ethan', 125128, 'Akess');
insert into TEACHERS (NAME, SALARY, SURNAME) values ('Ofella', 437118, 'Clows');
insert into TEACHERS (NAME, SALARY, SURNAME) values ('Rosalinde', 188240, 'Prenty');
insert into TEACHERS (NAME, SALARY, SURNAME) values ('Sarene', 492801, 'Colebourne');
insert into TEACHERS (NAME, SALARY, SURNAME) values ('Melitta', 147815, 'Tonnesen');
insert into TEACHERS (NAME, SALARY, SURNAME) values ('Tandi', 417892, 'Danahar');
insert into TEACHERS (NAME, SALARY, SURNAME) values ('Ruthy', 131543, 'Udey');
insert into TEACHERS (NAME, SALARY, SURNAME) values ('Verine', 249321, 'Sibley');
insert into TEACHERS (NAME, SALARY, SURNAME) values ('Corey', 324532, 'Realy');
insert into TEACHERS (NAME, SALARY, SURNAME) values ('Catlin', 101061, 'Dymond');
insert into TEACHERS (NAME, SALARY, SURNAME) values ('Hervey', 111219, 'Charley');
insert into TEACHERS (NAME, SALARY, SURNAME) values ('Julian', 495550, 'Arnao');
insert into TEACHERS (NAME, SALARY, SURNAME) values ('Allyson', 162963, 'Tomasicchio');
insert into TEACHERS (NAME, SALARY, SURNAME) values ('Thalia', 233505, 'Killner');
insert into TEACHERS (NAME, SALARY, SURNAME) values ('Lizabeth', 374391, 'Castelin');

CREATE TABLE SUBJECTS(
ID INT IDENTITY PRIMARY KEY,
NAME NVARCHAR(50) NOT NULL
)
insert into SUBJECTS (NAME) values ('et tempus semper');
insert into SUBJECTS (NAME) values ('vestibulum sagittis sapien cum sociis');
insert into SUBJECTS (NAME) values ('integer tincidunt ante');
insert into SUBJECTS (NAME) values ('justo in');
insert into SUBJECTS (NAME) values ('quam suspendisse');
insert into SUBJECTS (NAME) values ('volutpat quam');
insert into SUBJECTS (NAME) values ('nisl nunc rhoncus dui vel');
insert into SUBJECTS (NAME) values ('tortor id nulla ultrices');
insert into SUBJECTS (NAME) values ('mattis pulvinar nulla');
insert into SUBJECTS (NAME) values ('vivamus tortor duis');
insert into SUBJECTS (NAME) values ('nullam porttitor lacus');
insert into SUBJECTS (NAME) values ('et magnis dis');
insert into SUBJECTS (NAME) values ('eu mi nulla');
insert into SUBJECTS (NAME) values ('rutrum rutrum neque aenean');
insert into SUBJECTS (NAME) values ('aliquet ultrices erat');
insert into SUBJECTS (NAME) values ('suspendisse ornare consequat lectus');
insert into SUBJECTS (NAME) values ('dignissim vestibulum');
insert into SUBJECTS (NAME) values ('in faucibus orci luctus');
insert into SUBJECTS (NAME) values ('sapien non mi integer');
insert into SUBJECTS (NAME) values ('ac nibh');
insert into SUBJECTS (NAME) values ('aliquam quis turpis eget');
insert into SUBJECTS (NAME) values ('sapien ut nunc');
insert into SUBJECTS (NAME) values ('suspendisse potenti cras in');
insert into SUBJECTS (NAME) values ('dis parturient montes nascetur');
insert into SUBJECTS (NAME) values ('nulla pede ullamcorper augue');
insert into SUBJECTS (NAME) values ('aliquam erat volutpat in congue');
insert into SUBJECTS (NAME) values ('sit amet sapien dignissim');
insert into SUBJECTS (NAME) values ('cubilia curae mauris viverra');
insert into SUBJECTS (NAME) values ('rhoncus dui');
insert into SUBJECTS (NAME) values ('pede ullamcorper augue');
insert into SUBJECTS (NAME) values ('mi pede malesuada in');
insert into SUBJECTS (NAME) values ('consequat nulla nisl');
insert into SUBJECTS (NAME) values ('sagittis dui vel nisl');
insert into SUBJECTS (NAME) values ('nisl venenatis lacinia aenean sit');
insert into SUBJECTS (NAME) values ('ut rhoncus aliquet pulvinar');
insert into SUBJECTS (NAME) values ('et ultrices posuere cubilia');
insert into SUBJECTS (NAME) values ('aliquam non');
insert into SUBJECTS (NAME) values ('id pretium iaculis diam erat');
insert into SUBJECTS (NAME) values ('ac consequat metus');
insert into SUBJECTS (NAME) values ('magnis dis parturient montes nascetur');
insert into SUBJECTS (NAME) values ('tristique tortor eu');
insert into SUBJECTS (NAME) values ('non velit');
insert into SUBJECTS (NAME) values ('id turpis integer aliquet massa');
insert into SUBJECTS (NAME) values ('libero nam');
insert into SUBJECTS (NAME) values ('duis faucibus accumsan odio');
insert into SUBJECTS (NAME) values ('at feugiat non pretium');
insert into SUBJECTS (NAME) values ('luctus et');
insert into SUBJECTS (NAME) values ('dolor vel est donec odio');
insert into SUBJECTS (NAME) values ('ligula in lacus curabitur');
insert into SUBJECTS (NAME) values ('etiam justo etiam pretium');

CREATE TABLE LECTURES(
ID INT IDENTITY PRIMARY KEY,
LECTUREROOM NVARCHAR(50) NOT NULL,
SUBJECTID INT NOT NULL FOREIGN KEY REFERENCES SUBJECTS,
TEACHERID INT NOT NULL FOREIGN KEY REFERENCES TEACHERS
)

insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('China', 31, 46);
insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('Greece', 31, 45);
insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('United States', 9, 49);
insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('Comoros', 34, 8);
insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('Philippines', 49, 17);
insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('Russia', 42, 20);
insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('Poland', 49, 46);
insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('China', 42, 40);
insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('China', 21, 33);
insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('Japan', 29, 7);
insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('Colombia', 6, 20);
insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('Croatia', 23, 25);
insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('Indonesia', 41, 44);
insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('China', 31, 28);
insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('Philippines', 28, 34);
insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('Mexico', 21, 25);
insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('China', 43, 24);
insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('Uzbekistan', 38, 9);
insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('Portugal', 16, 43);
insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('Venezuela', 46, 20);
insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('Afghanistan', 45, 39);
insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('Thailand', 7, 29);
insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('Greece', 2, 7);
insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('Russia', 24, 45);
insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('Chile', 12, 15);
insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('Iraq', 25, 18);
insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('Colombia', 7, 18);
insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('Germany', 3, 35);
insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('Vietnam', 38, 46);
insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('Guatemala', 28, 30);
insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('Brazil', 42, 45);
insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('Russia', 19, 26);
insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('Czech Republic', 5, 46);
insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('Finland', 1, 28);
insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('Indonesia', 29, 6);
insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('Cyprus', 12, 6);
insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('Philippines', 10, 24);
insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('Philippines', 15, 28);
insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('Philippines', 19, 2);
insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('China', 42, 28);
insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('Cuba', 20, 13);
insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('Russia', 32, 25);
insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('United States', 18, 3);
insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('Ethiopia', 7, 7);
insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('China', 26, 10);
insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('Portugal', 24, 32);
insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('Senegal', 18, 28);
insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('Thailand', 8, 32);
insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('China', 35, 38);
insert into LECTURES (LECTUREROOM, SUBJECTID, TEACHERID) values ('Indonesia', 32, 34);



CREATE TABLE GROOPSLECTURES(
ID INT IDENTITY PRIMARY KEY,
DAYOFWEEK NVARCHAR(50) NOT NULL,
GROOPID INT NOT NULL FOREIGN KEY REFERENCES GROOPS,
LECTUREID INT NOT NULL FOREIGN KEY REFERENCES LECTURES
)

insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('tristique', 29, 39);
insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('elementum', 34, 14);
insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('ut', 5, 46);
insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('luctus', 31, 21);
insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('gravida', 5, 26);
insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('in', 32, 20);
insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('ante', 48, 15);
insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('dui', 29, 1);
insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('venenatis', 32, 12);
insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('consectetuer', 9, 15);
insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('elementum', 41, 43);
insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('accumsan', 12, 20);
insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('pharetra', 7, 7);
insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('mi', 16, 8);
insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('parturient', 37, 45);
insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('morbi', 3, 14);
insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('odio', 20, 27);
insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('cursus', 15, 25);
insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('consequat', 26, 29);
insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('lobortis', 39, 36);
insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('ipsum', 21, 43);
insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('ac', 33, 13);
insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('lorem', 16, 1);
insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('aenean', 34, 4);
insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('nulla', 1, 42);
insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('curae', 2, 36);
insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('dapibus', 32, 21);
insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('erat', 6, 23);
insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('eros', 14, 42);
insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('duis', 20, 10);
insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('aliquam', 3, 28);
insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('id', 32, 29);
insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('quam', 10, 5);
insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('maecenas', 37, 8);
insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('morbi', 1, 39);
insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('amet', 28, 36);
insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('sapien', 31, 20);
insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('lorem', 25, 29);
insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('adipiscing', 25, 36);
insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('pede', 19, 13);
insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('volutpat', 41, 4);
insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('suspendisse', 32, 7);
insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('curabitur', 19, 11);
insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('gravida', 15, 14);
insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('diam', 48, 1);
insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('blandit', 36, 35);
insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('quam', 41, 29);
insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('proin', 1, 38);
insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('blandit', 39, 38);
insert into GROOPSLECTURES (DAYOFWEEK, GROOPID, LECTUREID ) values ('nulla', 41, 20);

SELECT *
FROM DEPARTMENTS AS D JOIN FACULTIES AS F
ON D.FACULTYID = F.ID 
JOIN GROOPS AS G 
ON G.DEPARTMENTID = D.ID

SELECT *
FROM LECTURES AS L
JOIN SUBJECTS AS S 
ON L.SUBJECTID = S.ID
JOIN TEACHERS AS T 
ON L.TEACHERID = T.ID

SELECT *
FROM GROOPSLECTURES AS GL
JOIN GROOPS AS G
ON GL.GROOPID = G.ID
JOIN LECTURES AS L
ON GL.LECTUREID = L.ID