--create database UNIVER;

use UNIVER;

create table FACULTY(
	FACULTY_ID varchar(25) primary key,
	FACULTY_NAME varchar(100)
);

create table PULPIT(
	PULPIT_ID varchar(25) primary key,
	PULPIT_NAME varchar(100),
	FACULTY varchar(25) foreign key references FACULTY(FACULTY_ID) 
);

create table TEACHER(
	TEACHER_ID varchar(25) primary key,
	TEACHER_NAME varchar(100),
	PULPIT varchar(25) foreign key references PULPIT(PULPIT_ID)
);

create table SUBJECT(
	SUBJECT_ID varchar(25) primary key,
	SUBJECT_NAME varchar(100),
	PULPIT varchar(25) foreign key references PULPIT(PULPIT_ID)
);

create table GROUPS(
	GROUP_ID int primary key,
	GROUP_CODE varchar(100),
	GROUP_SPECIALITY varchar(100),
	PULPIT varchar(25) foreign key references PULPIT(PULPIT_ID)
);

create table STUDENTS(
	STUDENT_ID varchar(25) primary key,
	STUDENT_NAME varchar(100),
	GROUP_ID int foreign key references GROUPS(GROUP_ID)
);


create table PROGRESS(
	SUBJECT varchar(25) foreign key references SUBJECT(SUBJECT_ID),
	MARK int primary key,
	STUDENT varchar(25) foreign key references STUDENTS(STUDENT_ID)
);
drop table PROGRESS

insert into FACULTY   (FACULTY_ID,   FACULTY_NAME )
             values  ('����',   '����������� ���� � ����������');
insert into FACULTY   (FACULTY_ID,   FACULTY_NAME )
            values  ('����',   '���������� ���������� � �������');
insert into FACULTY   (FACULTY_ID,   FACULTY_NAME )
            values  ('���',     '����������������� ���������');
insert into FACULTY   (FACULTY_ID,   FACULTY_NAME )
            values  ('���',     '���������-������������� ���������');
insert into FACULTY   (FACULTY_ID,   FACULTY_NAME )
            values  ('����',    '���������� � ������� ������ ��������������');
insert into FACULTY   (FACULTY_ID,   FACULTY_NAME )
            values  ('���',     '���������� ������������ �������');

--------------------------------------------------------------------------------------------------

insert into PULPIT   (PULPIT_ID,    PULPIT_NAME,                                                   FACULTY )
             values  ('����',    '������������� ������ � ���������� ',                         '����'  );
insert into PULPIT   (PULPIT_ID,    PULPIT_NAME,                                                   FACULTY )
             values  ('������', '���������������� ������������ � ������ ��������� ���������� ', '����'  );
insert into PULPIT   (PULPIT_ID,    PULPIT_NAME,                                                   FACULTY)
              values  ('��',      '�����������',                                                 '���') ;         
insert into PULPIT   (PULPIT_ID,    PULPIT_NAME,                                                   FACULTY)
             values  ('��',      '������������',                                                 '���') ;   
insert into PULPIT   (PULPIT_ID,    PULPIT_NAME,                                                   FACULTY)
             values  ('��',      '��������������',                                              '���');           
insert into PULPIT   (PULPIT_ID,    PULPIT_NAME,                                                   FACULTY)
             values  ('�����',   '���������� � ����������������',                               '���');                
insert into PULPIT   (PULPIT_ID,    PULPIT_NAME,                                                   FACULTY)
             values  ('������',  '������������ �������������� � ������-��������� �������������','���');                  
insert into PULPIT   (PULPIT_ID,    PULPIT_NAME,                                                   FACULTY)
             values  ('��',     '���������� ����',                                              '����');                        
insert into PULPIT   (PULPIT_ID,    PULPIT_NAME,                                                   FACULTY)
             values  ('�����',  '������ ����� � ���������� �������������',                      '����');                        
insert into PULPIT   (PULPIT_ID,    PULPIT_NAME,                                                   FACULTY)
             values  ('��',     '������������ �����',                                           '���');            
insert into PULPIT   (PULPIT_ID,    PULPIT_NAME,                                                              FACULTY)
             values  ('��������','���������� ���������������� ������� � ����������� ���������� ����������','���');             
insert into PULPIT   (PULPIT_ID,    PULPIT_NAME,                                                      FACULTY)
             values  ('�������','���������� �������������� ������� � ����� ���������� ���������� ','����');                    
insert into PULPIT   (PULPIT_ID,    PULPIT_NAME,                                                                         FACULTY)
             values  ('��������','�����, ���������� ����������������� ����������� � ���������� ����������� �������', '����');
insert into PULPIT   (PULPIT_ID,    PULPIT_NAME,                                                      FACULTY)
             values  ('����',    '������������� ������ � ����������',                              '���');   
insert into PULPIT   (PULPIT_ID,    PULPIT_NAME,                                                      FACULTY)
             values  ('����',   '����������� � ��������� ������������������',                      '���');  

------------------------------------------------------------------------------------------------------------------------------------------

insert into  TEACHER    (TEACHER_ID,   TEACHER_NAME, PULPIT )
                       values  ('����',    '������ �������� �������������',  '����');
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('�����',    '�������� ��������� ��������',  '����');
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('�����',    '���������� ������ ����������',  '����');
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('����',    '������ ���� �����������',  '����');
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('����',    '������� �������� ��������',  '����');
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('�����',    '�������� ������ ���������',  '����');
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('���',     '����� ��������� ����������',  '����');
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('���',     '������� ��������� �����������',  '����');
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('���',     '��������� ����� ��������',  '����');
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('����',     '��������� ������� ����������',  '����');
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('������',  '����������� ������� ����������', '����' );
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('?',     '�����������',  '����');
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                      values  ('���',     '����� ������� ��������',  '����');
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('���',     '����� ������� �������������',  '����');
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('������',   '���������� ��������� �������������',  '������');
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('�����',   '������� ������ ����������',  '������');
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('������',   '����������� ��������� ��������',  '����');
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('����',   '������� ��������� ����������',  '����');
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('����',   '������ ������ ��������',  '��');
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('����', '������� ������ ����������',  '������');
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('������',   '���������� �������� ��������',  '��');
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('���',   '������ ���������� ������������',  '��');
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('�����',   '��������� �������� ���������',  '�����'); 
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('������',   '���������� �������� ����������',  '��'); 
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('������',   '��������� ������� ���������',  '��������'); 
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('�����',   '�������� ������ ����������',  '��'); 
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('���',   '����� ������ ��������',  '�����'); 
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('����',   '������ ������� ���������',  '�������'); 
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('����',   '������� ���� ����������',  '��������'); 

---------------------------------------------------------------------------------------------

insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,        PULPIT )
                       values ('����',   '������� ���������� ������ ������',                   '����');
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,        PULPIT)
                       values ('��',     '���� ������',                                        '����');
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,        PULPIT )
                       values ('���',    '�������������� ����������',                          '����');
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,        PULPIT )
                       values ('����',  '������ �������������� � ����������������',            '����');
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,        PULPIT )
                       values ('��',     '������������� ������ � ������������ ��������',       '����');
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,        PULPIT )
                       values ('���',    '��������������� ������� ����������',                 '����');
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,        PULPIT )
                       values ('����',     '������������� ������ ��������� ����������',        '����');
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,        PULPIT )
                       values ('���',     '�������������� �������������� ������',              '����');
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,        PULPIT )
                       values ('��',      '������������ ��������� ',                           '����');
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,        PULPIT )
                       values ('�����',   '��������������� ������, �������� � �������� �����', '������');
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,        PULPIT )
                       values ('���',     '������������ �������������� �������',               '����');
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,        PULPIT )
                       values ('���',     '����������� ���������������� ������������',         '������');
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,                            PULPIT)
               values ('��',   '���������� ���������',                     '����');
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,                             PULPIT )
               values ('��',   '�������������� ����������������',          '����');  
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,                             PULPIT )
               values ('����', '���������� ������ ���',                     '����');                   
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,                             PULPIT )
               values ('���',  '��������-��������������� ����������������', '����');
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,        PULPIT )
                       values ('��',     '��������� ������������������',                       '����');
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,        PULPIT )
                       values ('��',     '������������� ������',                               '����');
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,        PULPIT )
                       values ('������OO','�������� ������ ������ � ���� � ���. ������.',      '��');
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,        PULPIT )
                       values ('�������','������ ��������������� � ������������� ���������',  '������');
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,        PULPIT )
                       values ('��',     '���������� �������� ',                              '��');
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,        PULPIT )
                       values ('��',    '�����������',                                        '�����');
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,        PULPIT )
                       values ('��',    '������������ �����',                                 '��');   
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,        PULPIT )
                       values ('���',    '���������� ��������� �������',                      '��������'); 
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,        PULPIT )
                       values ('���',    '������ ��������� ����',                             '��');
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,        PULPIT )
                       values ('����',   '���������� � ������������ �������������',           '�����'); 
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,        PULPIT )
                       values ('����',   '���������� ���������� �������� ���������� ',        '�������');
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,        PULPIT )
                       values ('���',    '���������� ������������',                           '��������');     

--------------------------------------------------------------------------------------------------------------

insert into GROUPS(GROUP_ID,  GROUP_CODE, GROUP_SPECIALITY,      PULPIT )
                       values (1,   '1-40 05 01', '�������������� ������� � ����������',         '����');
insert into GROUPS(GROUP_ID, GROUP_CODE,  GROUP_SPECIALITY,      PULPIT )
                       values (2,   '1-40 05 01', '�������������� ������� � ����������',       '����');
insert into GROUPS(GROUP_ID, GROUP_CODE,  GROUP_SPECIALITY,      PULPIT )
                       values (3,  '1-40 05 01', '�������������� ������� � ����������',      '����');
insert into GROUPS(GROUP_ID,GROUP_CODE,   GROUP_SPECIALITY,      PULPIT )
                       values (4, '1-36 06 01',  '��������������� ������������ � ������� ���������� ����������', '������');
insert into GROUPS(GROUP_ID, GROUP_CODE,  GROUP_SPECIALITY,      PULPIT )
                       values (5,  '1-26 02 02-03',   '���������� (����������������)',    '����');
insert into GROUPS(GROUP_ID,GROUP_CODE,   GROUP_SPECIALITY,      PULPIT )
                       values (6,  '1-26 02 03',   '���������',   '����');
insert into GROUPS(GROUP_ID,GROUP_CODE,   GROUP_SPECIALITY,      PULPIT )
                       values (7, '1-75 01 01',  '������ ���������',  '��');
insert into GROUPS(GROUP_ID,GROUP_CODE,   GROUP_SPECIALITY,      PULPIT )
                       values (8, '6-05-0821-02',   '����������� �������������� � �������������',  '������');
insert into GROUPS(GROUP_ID,GROUP_CODE,   GROUP_SPECIALITY,      PULPIT )
                       values (9, '1-75 01 01',     '������ ���������',    '��');
 
------------------------------------------------------------------------------------------------------------------------------------------
insert into STUDENTS(STUDENT_ID, STUDENT_NAME, GROUP_ID)
						values ('���', '������ �������� �������������', 1);
insert into STUDENTS(STUDENT_ID, STUDENT_NAME, GROUP_ID)
						values ('���', '��������� ����� ���������', 8);
insert into STUDENTS(STUDENT_ID, STUDENT_NAME, GROUP_ID)
						values ('���','���������� ���� �����������',5);
insert into STUDENTS(STUDENT_ID, STUDENT_NAME, GROUP_ID)
						values ('���','������� ������ �������������',4);
insert into STUDENTS(STUDENT_ID, STUDENT_NAME, GROUP_ID)
						values ('���','�������� ������ ��������',3);
insert into STUDENTS(STUDENT_ID, STUDENT_NAME, GROUP_ID)
						values('���','��������� �� ��������',9);
insert into STUDENTS(STUDENT_ID, STUDENT_NAME, GROUP_ID)
						values('���','������� ������� ����������',2);
----------------------------------------------------------------------------------------------------------------------------------------

insert into PROGRESS(STUDENT,SUBJECT,MARK)
						values ('���','��',10);
insert into PROGRESS(STUDENT,SUBJECT,MARK)
						values ('���','��',9);
insert into PROGRESS(STUDENT,SUBJECT,MARK)
						values ('���','��',8);
insert into PROGRESS(STUDENT,SUBJECT,MARK)
						values ('���','��',6);
insert into PROGRESS(STUDENT,SUBJECT,MARK)
						values ('���','��',7);
insert into PROGRESS(STUDENT,SUBJECT,MARK)
						values ('���','���',5);
insert into PROGRESS(STUDENT,SUBJECT,MARK)
						values ('���','��',4);

---------------------------------INDEXES--------------------------------------------------

create index IND_SPECIALITY
ON GROUPS (GROUP_CODE, GROUP_SPECIALITY);

create index IND_PULPIT
ON PULPIT (PULPIT_ID, PULPIT_NAME);

create index IND_SUBJECT 
ON SUBJECT (SUBJECT_ID, SUBJECT_NAME);

----------------------------------VIEWS----------------------------------------------
go
create view IEF_GROUPS
as
select GROUPS.GROUP_ID, GROUPS.GROUP_SPECIALITY, PULPIT.FACULTY
from GROUPS join PULPIT
on GROUPS.PULPIT=PULPIT.PULPIT_ID 
where PULPIT.FACULTY like '���';
go

go
create view TOV_TEACHERS
as 
select TEACHER.TEACHER_NAME, PULPIT.FACULTY
from TEACHER join PULPIT 
on TEACHER.PULPIT=PULPIT.PULPIT_ID
where PULPIT.FACULTY like '���';
go

go
create view HTIT_SUBJECTS
as
select SUBJECT.SUBJECT_NAME, PULPIT.FACULTY
from SUBJECT join PULPIT
on SUBJECT.PULPIT=PULPIT.PULPIT_ID
where PULPIT.FACULTY like '����';
go
-----------------------------PROCEDURES-------------------------------------
go
create procedure Insert_Faculty @id varchar(25), @name varchar(100)
as
insert into FACULTY (FACULTY_ID, FACULTY_NAME)
values (@id, @name)
go

go
create procedure Update_Faculty @id varchar(25), @name varchar(100)
as
update FACULTY
set  FACULTY_NAME=@name
where FACULTY_ID=@id
go

go
create procedure Delete_Faculty @id varchar(25)
as
delete from FACULTY
where FACULTY_ID=@id 
go
select * from FACULTY;
exec Insert_Faculty '���', '��������� �������������� ����������';
exec Update_Faculty '���', '��������� �������������� ����������';
exec Delete_Faculty '���';
-------------------------FUNCTIONS--------------------------------------------
go
create function GetGroupsSpeciality(@faculty varchar(100))
returns varchar(100)
as
begin
	declare @speciality varchar(100);
	select @speciality=GROUPS.GROUP_SPECIALITY
	from GROUPS join PULPIT 
	on GROUPS.PULPIT=PULPIT.PULPIT_ID
	where PULPIT.FACULTY=@faculty
	return  @speciality
end
go

select dbo.GetGroupsSpeciality('���');

go
create function GetSubjectFaculty(@subject varchar(100))
returns varchar(100)
as
begin
	declare @faculty varchar(100);
	select @faculty=PULPIT.FACULTY
	from SUBJECT join PULPIT 
	on PULPIT.PULPIT_ID=SUBJECT.PULPIT
	where SUBJECT.SUBJECT_ID=@subject
	return  @faculty
end
go

select dbo.GetSubjectFaculty('��');


go
create function GetTeacherPulpit(@teacher varchar(100))
returns varchar(100)
as
begin
	declare @pulpit varchar(100);
	select @pulpit=TEACHER.PULPIT
	from TEACHER 
	where TEACHER.TEACHER_ID=@teacher
	return  @pulpit
end
go

select dbo.GetTeacherPulpit('���');

--------------------------TRIGGERS---------------------------------

go
create trigger Faculty_Insert
on FACULTY
after insert
as
select inserted.FACULTY_ID, 'INSERTED '+inserted.FACULTY_NAME from inserted
go

exec Insert_Faculty '���', '��������� �������������� ����������';

go
create trigger Faculty_Delete
on FACULTY
after delete
as
select FACULTY_ID, 'DELETED '+FACULTY_NAME from deleted
go

exec Delete_Faculty '���';

go
create trigger Faculty_Update
on FACULTY
after update
as
select FACULTY_ID, 'UPDATED '+FACULTY_NAME from inserted
go

exec Update_Faculty '���', '��������� �������������� ����������';

select * from FACULTY where FACULTY_ID like '���';
