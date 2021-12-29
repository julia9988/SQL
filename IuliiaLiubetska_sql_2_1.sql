/*Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null
Наполнить таблицу employee 70 строками.*/
create table employees (
	id serial primary key,
	employee_name varchar(50) not null
	);

select * from employees;

insert into employees(employee_name)
values('Anna Popova'),
('Vlad Bubnov'),
('Iryna Klimkova'),
('Krivoruchek Vitaly'),
('Korablev'),
('Ulyana Lozhko'),
('Ulyana'),
('Semen Goryachev'),
('Natalia Nikolayenko'),
('Aliaksandra Kalenik'),
('Lena Barinova'),
('Andrianov Nikita'),
('Olga Kontush'),
('Vladislav Krukovich'),
('Инна Диденко'),
('Viktoria Shablova'),
('Nikita Fadeenko'),
('Миловская Анна'),
('Maryna Mazanko'),
('Julia Marchenko'),
('Anna Popova'),
('Vlad Bubn'),
('Iryna Klimk'),
('Krivoruchek V'),
('Korablev g'),
('Ulyana L'),
('Ulyana M'),
('Semen G'),
('Natalia N'),
('Aliaksandra K'),
('Lena'),
('Andrianov N'),
('Olga K'),
('Vladislav Kr'),
('Инна До'),
('Viktoria Sh'),
('Nikita Fad'),
('Миловская А'),
('Maryna M'),
('Julia M'),
('Anna P'),
('Vlad Bu'),
('Iryna Kli'),
('Krivoruchek Vit'),
('Korablev C'),
('Ulyana Lo'),
('Ulyana R'),
('Semen Goryache'),
('Natalia Nikolayenk'),
('Aliaksandra Kaleni'),
('Lena Barinov'),
('Andrianov Nikit'),
('Olga Kontu'),
('Vladislav Krukovi'),
('Инна Диденк'),
('Viktoria Shablov'),
('Nikita T'),
('Миловская R'),
('Maryna E'),
('Julia W'),
('Lena Q'),
('Andrianov E'),
('Olga Y'),
('Vladislav T'),
('Инна R'),
('Viktoria Y'),
('Nikita G'),
('Миловская A'),
('Maryna V'),
('Julia N');

/*Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null
Наполнить таблицу salary 15 строками:
- 1000
- 1100
- 1200
- 1300
- 1400
- 1500
- 1600
- 1700
- 1800
- 1900
- 2000
- 2100
- 2200
- 2300
- 2400
- 2500*/

create table salary(
id serial primary key,
monthly_salary int not null);

select * from employee_salary;
select * from employees;
select * from salary;
select * from roles;

insert into salary(monthly_salary)
values(1000),
(1100),
(1200),
(1300),
(1400),
(1500),
(1600),
(1700),
(1800),
(1900),
(2000),
(2100),
(2200),
(2300),
(2400),
(2500);

/*Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null
Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id*/


create table employee_salary(
id serial primary key,
employee_id int not null unique,
salary_id int not null
);

insert into employee_salary(employee_id, salary_id)
values(1, 1),
(2, 3),
(13, 2),
(21, 4),
(55, 5),
(43, 6),
(201, 1),
(32, 3),
(101, 2),
(11, 1),
(4, 3),
(5, 2),
(6, 1),
(71, 3),
(30, 2),
(111, 1),
(8, 3),
(59, 2),
(10, 1),
(12, 3),
(56, 2),
(14, 1),
(15, 3),
(16, 2),
(17, 1),
(20, 3),
(31, 2),
(18, 1),
(22, 3),
(23, 2),
(19, 10),
(24, 3),
(45, 2),
(44, 11),
(25, 3),
(39, 9),
(28, 15),
(26, 6),
(27, 8),
(567, 5);

/*Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique
Поменять тип столба role_name с int на varchar(30)
Наполнить таблицу roles 20 строками:*/

create table roles(
id serial primary key,
role_name int not null unique
);

alter table roles 
alter column role_name type varchar(40) using role_name::varchar(30);

insert into roles(role_name)
values('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer')
('Senior Automation QA engineer';

insert into roles(role_name)
values('Senior Automation QA engineer');

/*Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
Наполнить таблицу roles_employee 40 строками:*/


create table roles_employee (
id serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id)
	references employees(id),
foreign key (role_id)
	references roles(id)
);

select * from roles_employee;

insert into roles_employee(employee_id, role_id)
values(1, 1),
(2, 6),
(3, 7),
(4, 8),
(5, 9),
(6, 1),
(7, 5),
(8, 5),
(9, 1),
(10, 15),
(11, 11),
(12, 4),
(13, 9),
(14, 8),
(15, 2),
(16, 3),
(17,2),
(18, 4),
(19, 4),
(20, 4),
(21, 8),
(22, 9),
(23, 10),
(24, 10),
(25, 11),
(26, 12),
(27, 9),
(28, 9),
(29, 5),
(30, 8),
(31, 4),
(32, 14),
(33, 9),
(34, 6),
(35, 6),
(36, 8),
(37, 9),
(38, 9),
(39, 5),
(40, 13);
