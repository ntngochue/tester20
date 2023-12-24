
Use tester20;

create table Department (
DepartmentID int primary key auto_increment,
DepartmentName varchar(50));

create table Position (
PositionID int primary key auto_increment,
PositionName varchar(50));

create table Account (
AccountID int primary key auto_increment,
Email varchar(50),
Username varchar(50),
FullName varchar(50),
DepartmentID varchar(50),
foreign key(DeparmentID) references Deparment(DeparmentID),
PositionID int,
CreateDate date );

create table Gro (
GroupID int primary key auto_increment,
GroupName varchar(50),
CreatorID varchar(50),
CreatorDate Date 
);

create table GroupAccount (
GroupID int,
foreign key(GroupID) references Gro(GroupID),
AccountID varchar(50),
foreign key(AccountID) references Account(AccountID),
JoinDate date
);

create table TypeQuestion (
TypeID int primary key auto_increment,
TypeName enum('Essay','Multiple-Choice')
);

create table CategoryQuestion (
CategoryID int primary key auto_increment,
CategoryName varchar(50)
);

create table Question (
QuestionID int primary key auto_increment,
Content varchar(100),
CategoryID int,
foreign key(CategoryID) references CategoryQuestion(CategoryID),
TypeID int,
foreign key(TypeID) references TypeQuestion(TypeID),
CreatorID varchar(50),
CreatorDate date
);

create table Answer (
AnswerID int primary key auto_increment,
Content Varchar(100),
QuestionID int,
foreign key(QuestionID) references Question(QuestionID),
isCorrect enum('True','False')
);

create table Exam (
ExamID int primary key auto_increment,
Code varchar(50),
Title varchar(50),
CategoryID int,
foreign key(CategoryID) references CategoryQuestion(CategoryID),
Duration varchar(50),
CreationID varchar(50),
CreateDate date
);

create table ExamQuestion (
ExamID int,
foreign key(ExamID) references Exam(ExamID),
QuestionID int,
foreign key(QuestionID) references Question(QuestionID)
);

