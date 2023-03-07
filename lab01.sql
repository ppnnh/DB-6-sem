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
             values  ('ИДиП',   'Издателькое дело и полиграфия');
insert into FACULTY   (FACULTY_ID,   FACULTY_NAME )
            values  ('ХТиТ',   'Химическая технология и техника');
insert into FACULTY   (FACULTY_ID,   FACULTY_NAME )
            values  ('ЛХФ',     'Лесохозяйственный факультет');
insert into FACULTY   (FACULTY_ID,   FACULTY_NAME )
            values  ('ИЭФ',     'Инженерно-экономический факультет');
insert into FACULTY   (FACULTY_ID,   FACULTY_NAME )
            values  ('ТТЛП',    'Технология и техника лесной промышленности');
insert into FACULTY   (FACULTY_ID,   FACULTY_NAME )
            values  ('ТОВ',     'Технология органических веществ');

--------------------------------------------------------------------------------------------------

insert into PULPIT   (PULPIT_ID,    PULPIT_NAME,                                                   FACULTY )
             values  ('ИСиТ',    'Иформационный систем и технологий ',                         'ИДиП'  );
insert into PULPIT   (PULPIT_ID,    PULPIT_NAME,                                                   FACULTY )
             values  ('ПОиСОИ', 'Полиграфического оборудования и систем обработки информации ', 'ИДиП'  );
insert into PULPIT   (PULPIT_ID,    PULPIT_NAME,                                                   FACULTY)
              values  ('ЛВ',      'Лесоводства',                                                 'ЛХФ') ;         
insert into PULPIT   (PULPIT_ID,    PULPIT_NAME,                                                   FACULTY)
             values  ('ОВ',      'Охотоведения',                                                 'ЛХФ') ;   
insert into PULPIT   (PULPIT_ID,    PULPIT_NAME,                                                   FACULTY)
             values  ('ЛУ',      'Лесоустройства',                                              'ЛХФ');           
insert into PULPIT   (PULPIT_ID,    PULPIT_NAME,                                                   FACULTY)
             values  ('ЛЗиДВ',   'Лесозащиты и древесиноведения',                               'ЛХФ');                
insert into PULPIT   (PULPIT_ID,    PULPIT_NAME,                                                   FACULTY)
             values  ('ЛПиСПС',  'Ландшафтного проектирования и садово-паркового строительства','ЛХФ');                  
insert into PULPIT   (PULPIT_ID,    PULPIT_NAME,                                                   FACULTY)
             values  ('ТЛ',     'Транспорта леса',                                              'ТТЛП');                        
insert into PULPIT   (PULPIT_ID,    PULPIT_NAME,                                                   FACULTY)
             values  ('ЛМиЛЗ',  'Лесных машин и технологии лесозаготовок',                      'ТТЛП');                        
insert into PULPIT   (PULPIT_ID,    PULPIT_NAME,                                                   FACULTY)
             values  ('ОХ',     'Органической химии',                                           'ТОВ');            
insert into PULPIT   (PULPIT_ID,    PULPIT_NAME,                                                              FACULTY)
             values  ('ТНХСиППМ','Технологии нефтехимического синтеза и переработки полимерных материалов','ТОВ');             
insert into PULPIT   (PULPIT_ID,    PULPIT_NAME,                                                      FACULTY)
             values  ('ТНВиОХТ','Технологии неорганических веществ и общей химической технологии ','ХТиТ');                    
insert into PULPIT   (PULPIT_ID,    PULPIT_NAME,                                                                         FACULTY)
             values  ('ХТЭПиМЭЕ','Химии, технологии электрохимических производств и материалов электронной техники', 'ХТиТ');
insert into PULPIT   (PULPIT_ID,    PULPIT_NAME,                                                      FACULTY)
             values  ('ЭТиМ',    'экономической теории и маркетинга',                              'ИЭФ');   
insert into PULPIT   (PULPIT_ID,    PULPIT_NAME,                                                      FACULTY)
             values  ('МиЭП',   'Менеджмента и экономики природопользования',                      'ИЭФ');  

------------------------------------------------------------------------------------------------------------------------------------------

insert into  TEACHER    (TEACHER_ID,   TEACHER_NAME, PULPIT )
                       values  ('СМЛВ',    'Смелов Владимир Владиславович',  'ИСиТ');
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('АКНВЧ',    'Акунович Станислав Иванович',  'ИСиТ');
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('КЛСНВ',    'Колесников Леонид Валерьевич',  'ИСиТ');
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('ГРМН',    'Герман Олег Витольдович',  'ИСиТ');
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('ЛЩНК',    'Лащенко Анатолий Пвалович',  'ИСиТ');
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('БРКВЧ',    'Бракович Андрей Игорьевич',  'ИСиТ');
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('ДДК',     'Дедко Александр Аркадьевич',  'ИСиТ');
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('КБЛ',     'Кабайло Александр Серафимович',  'ИСиТ');
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('УРБ',     'Урбанович Павел Павлович',  'ИСиТ');
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('РМНК',     'Романенко Дмитрий Михайлович',  'ИСиТ');
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('ПСТВЛВ',  'Пустовалова Наталия Николаевна', 'ИСиТ' );
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('?',     'Неизвестный',  'ИСиТ');
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                      values  ('ГРН',     'Гурин Николай Иванович',  'ИСиТ');
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('ЖЛК',     'Жиляк Надежда Александровна',  'ИСиТ');
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('БРТШВЧ',   'Барташевич Святослав Александрович',  'ПОиСОИ');
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('ЮДНКВ',   'Юденков Виктор Степанович',  'ПОиСОИ');
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('БРНВСК',   'Барановский Станислав Иванович',  'ЭТиМ');
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('НВРВ',   'Неверов Александр Васильевич',  'МиЭП');
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('РВКЧ',   'Ровкач Андрей Иванович',  'ОВ');
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('ДМДК', 'Демидко Марина Николаевна',  'ЛПиСПС');
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('МШКВСК',   'Машковский Владимир Петрович',  'ЛУ');
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('ЛБХ',   'Лабоха Константин Валентинович',  'ЛВ');
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('ЗВГЦВ',   'Звягинцев Вячеслав Борисович',  'ЛЗиДВ'); 
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('БЗБРДВ',   'Безбородов Владимир Степанович',  'ОХ'); 
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('ПРКПЧК',   'Прокопчук Николай Романович',  'ТНХСиППМ'); 
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('НСКВЦ',   'Насковец Михаил Трофимович',  'ТЛ'); 
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('МХВ',   'Мохов Сергей Петрович',  'ЛМиЛЗ'); 
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('ЕЩНК',   'Ещенко Людмила Семеновна',  'ТНВиОХТ'); 
insert into  TEACHER    (TEACHER_ID,  TEACHER_NAME, PULPIT )
                       values  ('ЖРСК',   'Жарский Иван Михайлович',  'ХТЭПиМЭЕ'); 

---------------------------------------------------------------------------------------------

insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,        PULPIT )
                       values ('СУБД',   'Системы управления базами данных',                   'ИСиТ');
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,        PULPIT)
                       values ('БД',     'Базы данных',                                        'ИСиТ');
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,        PULPIT )
                       values ('ИНФ',    'Информацтонные технологии',                          'ИСиТ');
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,        PULPIT )
                       values ('ОАиП',  'Основы алгоритмизации и программирования',            'ИСиТ');
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,        PULPIT )
                       values ('ПЗ',     'Представление знаний в компьютерных системах',       'ИСиТ');
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,        PULPIT )
                       values ('ПСП',    'Пограммирование сетевых приложений',                 'ИСиТ');
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,        PULPIT )
                       values ('МСОИ',     'Моделирование систем обработки информации',        'ИСиТ');
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,        PULPIT )
                       values ('ПИС',     'Проектирование информационных систем',              'ИСиТ');
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,        PULPIT )
                       values ('КГ',      'Компьютерная геометрия ',                           'ИСиТ');
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,        PULPIT )
                       values ('ПМАПЛ',   'Полиграфические машины, автоматы и поточные линии', 'ПОиСОИ');
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,        PULPIT )
                       values ('КМС',     'Компьютерные мультимедийные системы',               'ИСиТ');
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,        PULPIT )
                       values ('ОПП',     'Организация полиграфического производства',         'ПОиСОИ');
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,                            PULPIT)
               values ('ДМ',   'Дискретная матеатика',                     'ИСиТ');
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,                             PULPIT )
               values ('МП',   'Математисеское программирование',          'ИСиТ');  
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,                             PULPIT )
               values ('ЛЭВМ', 'Логические основы ЭВМ',                     'ИСиТ');                   
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,                             PULPIT )
               values ('ООП',  'Объектно-ориентированное программирование', 'ИСиТ');
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,        PULPIT )
                       values ('ЭП',     'Экономика природопользования',                       'МиЭП');
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,        PULPIT )
                       values ('ЭТ',     'Экономическая теория',                               'ЭТиМ');
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,        PULPIT )
                       values ('БЛЗиПсOO','Биология лесных зверей и птиц с осн. охотов.',      'ОВ');
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,        PULPIT )
                       values ('ОСПиЛПХ','Основы садовопаркового и лесопаркового хозяйства',  'ЛПиСПС');
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,        PULPIT )
                       values ('ИГ',     'Инженерная геодезия ',                              'ЛУ');
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,        PULPIT )
                       values ('ЛВ',    'Лесоводство',                                        'ЛЗиДВ');
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,        PULPIT )
                       values ('ОХ',    'Органическая химия',                                 'ОХ');   
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,        PULPIT )
                       values ('ТРИ',    'Технология резиновых изделий',                      'ТНХСиППМ'); 
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,        PULPIT )
                       values ('ВТЛ',    'Водный транспорт леса',                             'ТЛ');
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,        PULPIT )
                       values ('ТиОЛ',   'Технология и оборудование лесозаготовок',           'ЛМиЛЗ'); 
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,        PULPIT )
                       values ('ТОПИ',   'Технология обогащения полезных ископаемых ',        'ТНВиОХТ');
insert into SUBJECT   (SUBJECT_ID,   SUBJECT_NAME,        PULPIT )
                       values ('ПЭХ',    'Прикладная электрохимия',                           'ХТЭПиМЭЕ');     

--------------------------------------------------------------------------------------------------------------

insert into GROUPS(GROUP_ID,  GROUP_CODE, GROUP_SPECIALITY,      PULPIT )
                       values (1,   '1-40 05 01', 'Информационные системы и технологии',         'ИСиТ');
insert into GROUPS(GROUP_ID, GROUP_CODE,  GROUP_SPECIALITY,      PULPIT )
                       values (2,   '1-40 05 01', 'Информационные системы и технологии',       'ИСиТ');
insert into GROUPS(GROUP_ID, GROUP_CODE,  GROUP_SPECIALITY,      PULPIT )
                       values (3,  '1-40 05 01', 'Информационные системы и технологии',      'ИСиТ');
insert into GROUPS(GROUP_ID,GROUP_CODE,   GROUP_SPECIALITY,      PULPIT )
                       values (4, '1-36 06 01',  'Полиграфическое оборудование и системы робработки информации', 'ПОиСОИ');
insert into GROUPS(GROUP_ID, GROUP_CODE,  GROUP_SPECIALITY,      PULPIT )
                       values (5,  '1-26 02 02-03',   'Менеджмент (производственный)',    'МиЭП');
insert into GROUPS(GROUP_ID,GROUP_CODE,   GROUP_SPECIALITY,      PULPIT )
                       values (6,  '1-26 02 03',   'Маркетинг',   'ЭТиМ');
insert into GROUPS(GROUP_ID,GROUP_CODE,   GROUP_SPECIALITY,      PULPIT )
                       values (7, '1-75 01 01',  'Лесное хозяйство',  'ОВ');
insert into GROUPS(GROUP_ID,GROUP_CODE,   GROUP_SPECIALITY,      PULPIT )
                       values (8, '6-05-0821-02',   'Ландшафтное проектирование и строительство',  'ЛПиСПС');
insert into GROUPS(GROUP_ID,GROUP_CODE,   GROUP_SPECIALITY,      PULPIT )
                       values (9, '1-75 01 01',     'Лесное хозяйство',    'ЛУ');
 
------------------------------------------------------------------------------------------------------------------------------------------
insert into STUDENTS(STUDENT_ID, STUDENT_NAME, GROUP_ID)
						values ('ШВА', 'Шахлай Виктория Александровна', 1);
insert into STUDENTS(STUDENT_ID, STUDENT_NAME, GROUP_ID)
						values ('ШАВ', 'Шляхтенко Артем Вадимович', 8);
insert into STUDENTS(STUDENT_ID, STUDENT_NAME, GROUP_ID)
						values ('ИЕГ','Ивановский Егор Геннадьевич',5);
insert into STUDENTS(STUDENT_ID, STUDENT_NAME, GROUP_ID)
						values ('ШАА','Шулаков Андрей Александрович',4);
insert into STUDENTS(STUDENT_ID, STUDENT_NAME, GROUP_ID)
						values ('КАО','Карпович Карина Олеговна',3);
insert into STUDENTS(STUDENT_ID, STUDENT_NAME, GROUP_ID)
						values('ЯЯП','Янковский Ян Павлович',9);
insert into STUDENTS(STUDENT_ID, STUDENT_NAME, GROUP_ID)
						values('БВД','Буранко Валерия Дмитриевна',2);
----------------------------------------------------------------------------------------------------------------------------------------

insert into PROGRESS(STUDENT,SUBJECT,MARK)
						values ('ШВА','БД',10);
insert into PROGRESS(STUDENT,SUBJECT,MARK)
						values ('БВД','ДМ',9);
insert into PROGRESS(STUDENT,SUBJECT,MARK)
						values ('ЯЯП','ЛВ',8);
insert into PROGRESS(STUDENT,SUBJECT,MARK)
						values ('КАО','ПЗ',6);
insert into PROGRESS(STUDENT,SUBJECT,MARK)
						values ('ШАА','ОХ',7);
insert into PROGRESS(STUDENT,SUBJECT,MARK)
						values ('ИЕГ','ВТЛ',5);
insert into PROGRESS(STUDENT,SUBJECT,MARK)
						values ('ШАВ','ИГ',4);

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
where PULPIT.FACULTY like 'ИЭФ';
go

go
create view TOV_TEACHERS
as 
select TEACHER.TEACHER_NAME, PULPIT.FACULTY
from TEACHER join PULPIT 
on TEACHER.PULPIT=PULPIT.PULPIT_ID
where PULPIT.FACULTY like 'ТОВ';
go

go
create view HTIT_SUBJECTS
as
select SUBJECT.SUBJECT_NAME, PULPIT.FACULTY
from SUBJECT join PULPIT
on SUBJECT.PULPIT=PULPIT.PULPIT_ID
where PULPIT.FACULTY like 'ХТиТ';
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
exec Insert_Faculty 'ФИТ', 'Факультет Информационных Технологий';
exec Update_Faculty 'ФИТ', 'факультет информационных технологий';
exec Delete_Faculty 'ФИТ';
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

select dbo.GetGroupsSpeciality('ИЭФ');

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

select dbo.GetSubjectFaculty('БД');


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

select dbo.GetTeacherPulpit('ДДК');

--------------------------TRIGGERS---------------------------------

go
create trigger Faculty_Insert
on FACULTY
after insert
as
select inserted.FACULTY_ID, 'INSERTED '+inserted.FACULTY_NAME from inserted
go

exec Insert_Faculty 'ФИТ', 'Факультет Информационных Технологий';

go
create trigger Faculty_Delete
on FACULTY
after delete
as
select FACULTY_ID, 'DELETED '+FACULTY_NAME from deleted
go

exec Delete_Faculty 'ФИТ';

go
create trigger Faculty_Update
on FACULTY
after update
as
select FACULTY_ID, 'UPDATED '+FACULTY_NAME from inserted
go

exec Update_Faculty 'ФИТ', 'факультет информационных технологий';

select * from FACULTY where FACULTY_ID like 'ФИТ';
