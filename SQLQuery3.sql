-- Создаем базу
create database Academy;
go 


use Academy;
go

create table Faculties
(
    Id   int identity(1,1) primary key,
    Name nvarchar(100) not null unique check (Name != '')
);


create table Departments
(
    Id         int identity(1,1) primary key,
    Financing  money not null default 0 check (Financing >= 0),
    Name       nvarchar(100) not null unique check (Name != '')
);


create table Teachers
(
    Id             int identity(1,1) primary key,
    EmploymentDate date not null check (EmploymentDate >= '1990-01-01'),
    Name           nvarchar(max) not null check (Name != ''),
    Premium        money not null default 0 check (Premium >= 0),
    Salary         money not null check (Salary > 0),
    Surname        nvarchar(max) not null check (Surname != '')
);

create table Groups
(
    Id     int identity(1,1) primary key,
    Name   nvarchar(10) not null unique check (Name != ''),
    Rating int not null check (Rating between 0 and 5),
    Year   int not null check (Year between 1 and 5)
);

print 'База создана, теперь точно работает!';
go