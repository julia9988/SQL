/*������� ������� employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null
��������� ������� employee 70 ��������.*/
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
('���� �������'),
('Viktoria Shablova'),
('Nikita Fadeenko'),
('��������� ����'),
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
('���� ��'),
('Viktoria Sh'),
('Nikita Fad'),
('��������� �'),
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
('���� ������'),
('Viktoria Shablov'),
('Nikita T'),
('��������� R'),
('Maryna E'),
('Julia W'),
('Lena Q'),
('Andrianov E'),
('Olga Y'),
('Vladislav T'),
('���� R'),
('Viktoria Y'),
('Nikita G'),
('��������� A'),
('Maryna V'),
('Julia N');

/*������� ������� salary
- id. Serial  primary key,
- monthly_salary. Int, not null
��������� ������� salary 15 ��������:
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

/*������� ������� employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null
��������� ������� employee_salary 40 ��������:
- � 10 ����� �� 40 �������� �������������� employee_id*/


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

/*������� ������� roles
- id. Serial  primary key,
- role_name. int, not null, unique
�������� ��� ������ role_name � int �� varchar(30)
��������� ������� roles 20 ��������:*/

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

/*������� ������� roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (������� ���� ��� ������� employees, ���� id)
- role_id. Int, not null (������� ���� ��� ������� roles, ���� id)
��������� ������� roles_employee 40 ��������:*/


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
