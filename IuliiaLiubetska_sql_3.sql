--1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select  employees.employee_name, salary.monthly_salary 
from ((employee_salary
join salary on salary.id = employee_salary.salary_id)
join employees on employees.id = employee_salary.salary_id);

--2. ������� ���� ���������� � ������� �� ������ 2000.
select  employees.employee_name, salary.monthly_salary 
from ((employee_salary
full outer join salary on salary.id = employee_salary.salary_id)
full outer join employees on employees.id = employee_salary.salary_id)
where salary.monthly_salary < 2000;

--3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select  employees.employee_name, salary.monthly_salary 
from ((employee_salary
full outer join salary on salary.id = employee_salary.salary_id)
full outer join employees on employees.id = employee_salary.salary_id)
where employees.employee_name is null;

--4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select  employees.employee_name, salary.monthly_salary 
from ((employee_salary
full outer join salary on salary.id = employee_salary.salary_id)
full outer join employees on employees.id = employee_salary.salary_id)
where salary.monthly_salary < 2000 and employees.employee_name is null;

--5. ����� ���� ���������� ���� �� ��������� ��.
select  employees.employee_name, salary.monthly_salary 
from ((employee_salary
full outer join salary on salary.id = employee_salary.salary_id)
full outer join employees on employees.id = employee_salary.salary_id)
where salary.monthly_salary is null;

--6. ������� ���� ���������� � ���������� �� ���������.
select employees.employee_name, roles.role_name 
from ((roles_employee
full outer join roles on roles.id = roles_employee.role_id)
full outer join employees on employees.id = roles_employee.employee_id);

--7. ������� ����� � ��������� ������ Java �������������.
select employees.employee_name, roles.role_name 
from ((roles_employee
full outer join roles on roles.id = roles_employee.role_id)
full outer join employees on employees.id = roles_employee.employee_id)
where role_name like '%Java dev%';

--8. ������� ����� � ��������� ������ Python �������������.
select employees.employee_name, roles.role_name 
from ((roles_employee
full outer join roles on roles.id = roles_employee.role_id)
full outer join employees on employees.id = roles_employee.employee_id)
where role_name like '%Python%';

--9. ������� ����� � ��������� ���� QA ���������.
select employees.employee_name, roles.role_name 
from ((roles_employee
full outer join roles on roles.id = roles_employee.role_id)
full outer join employees on employees.id = roles_employee.employee_id)
where role_name like '%QA engineer%';

--10. ������� ����� � ��������� ������ QA ���������.
select employees.employee_name, roles.role_name 
from ((roles_employee
full outer join roles on roles.id = roles_employee.role_id)
full outer join employees on employees.id = roles_employee.employee_id)
where role_name like '%Manual QA%';

select * from employee_salary;
select * from salary;
select * from employees e ;
select * from roles;
select * from roles_employee; 

--11. ������� ����� � ��������� ��������������� QA
select employees.employee_name, roles.role_name 
from ((roles_employee
full outer join roles on roles.id = roles_employee.role_id)
full outer join employees on employees.id = roles_employee.employee_id)
where role_name like '%Automation QA engineer%';

--12. ������� ����� � �������� Junior ������������
select employees.employee_name, salary.monthly_salary, roles.role_name 
from (((employee_salary
full outer join employees on employees.id = employee_salary.id)
full outer join salary on salary.id = employee_salary.id)
full outer join roles on roles.id = employee_salary.id)
where roles.role_name like '%Junior%';

--13. ������� ����� � �������� Middle ������������
select employees.employee_name, salary.monthly_salary, roles.role_name 
from (((employee_salary
full outer join employees on employees.id = employee_salary.id)
full outer join salary on salary.id = employee_salary.id)
full outer join roles on roles.id = employee_salary.id)
where roles.role_name like '%Middle%';

--14. ������� ����� � �������� Senior ������������
select employees.employee_name, salary.monthly_salary, roles.role_name 
from (((employee_salary
full outer join employees on employees.id = employee_salary.id)
full outer join salary on salary.id = employee_salary.id)
full outer join roles on roles.id = employee_salary.id)
where roles.role_name like '%Senior%';

--15. ������� �������� Java �������������
select employees.employee_name, salary.monthly_salary, roles.role_name 
from (((employee_salary
full outer join employees on employees.id = employee_salary.id)
full outer join salary on salary.id = employee_salary.id)
full outer join roles on roles.id = employee_salary.id)
where roles.role_name like '%Java%';

--16. ������� �������� Python �������������
select employees.employee_name, salary.monthly_salary, roles.role_name 
from (((employee_salary
full outer join employees on employees.id = employee_salary.id)
full outer join salary on salary.id = employee_salary.id)
full outer join roles on roles.id = employee_salary.id)
where roles.role_name like '%Python%';

--17. ������� ����� � �������� Junior Python �������������
select employees.employee_name, salary.monthly_salary, roles.role_name 
from (((employee_salary
full outer join employees on employees.id = employee_salary.id)
full outer join salary on salary.id = employee_salary.id)
full outer join roles on roles.id = employee_salary.id)
where roles.role_name like '%Junior Python%';

--18. ������� ����� � �������� Middle JS �������������
select employees.employee_name, salary.monthly_salary, roles.role_name 
from (((employee_salary
full outer join employees on employees.id = employee_salary.id)
full outer join salary on salary.id = employee_salary.id)
full outer join roles on roles.id = employee_salary.id)
where roles.role_name like '%Middle JavaScript%';

--19. ������� ����� � �������� Senior Java �������������
select employees.employee_name, salary.monthly_salary, roles.role_name 
from (((employee_salary
full outer join employees on employees.id = employee_salary.id)
full outer join salary on salary.id = employee_salary.id)
full outer join roles on roles.id = employee_salary.id)
where roles.role_name like '%Senior JavaScript%';

--20. ������� �������� Junior QA ���������
select employees.employee_name, salary.monthly_salary, roles.role_name 
from (((employee_salary
full outer join employees on employees.id = employee_salary.id)
full outer join salary on salary.id = employee_salary.id)
full outer join roles on roles.id = employee_salary.id)
where roles.role_name like '%Junior%QA%';

--21. ������� ������� �������� ���� Junior ������������
select AVG(salary.monthly_salary)
from (((employee_salary
full outer join employees on employees.id = employee_salary.id)
full outer join salary on salary.id = employee_salary.id)
full outer join roles on roles.id = employee_salary.id)
where roles.role_name like '%Junior%';

--22. ������� ����� ������� JS �������������
select SUM(salary.monthly_salary)
from (((employee_salary
full outer join employees on employees.id = employee_salary.id)
full outer join salary on salary.id = employee_salary.id)
full outer join roles on roles.id = employee_salary.id)
where roles.role_name like '%JavaScript%';

--23. ������� ����������� �� QA ���������
select Min(salary.monthly_salary)
from (((employee_salary
full outer join employees on employees.id = employee_salary.id)
full outer join salary on salary.id = employee_salary.id)
full outer join roles on roles.id = employee_salary.id)
where roles.role_name like '%QA%';

--24. ������� ������������ �� QA ���������
select MAx(salary.monthly_salary)
from (((employee_salary
full outer join employees on employees.id = employee_salary.id)
full outer join salary on salary.id = employee_salary.id)
full outer join roles on roles.id = employee_salary.id)
where roles.role_name like '%QA%';

--25. ������� ���������� QA ���������
select count(roles.role_name)
from roles
where roles.role_name like '%QA%';

select * from employee_salary;
select * from salary;
select * from employees e ;
select * from roles;
select * from roles_employee; 

--26. ������� ���������� Middle ������������.
select count(roles.role_name)
from roles
where roles.role_name like '%Middle%';

--27. ������� ���������� �������������
select count(roles.role_name)
from roles
where roles.role_name like '%dev%';

--28. ������� ���� (�����) �������� �������������.
select sum(salary.monthly_salary)
from salary;

--29. ������� �����, ��������� � �� ���� ������������ �� �����������
select employees.employee_name, roles.role_name, salary.monthly_salary 
from (((employee_salary
full outer join employees on employees.id = employee_salary.id)
full outer join salary on salary.id = employee_salary.id)
full outer join roles on roles.id = employee_salary.id)
order by salary.monthly_salary asc;

--30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select employees.employee_name, roles.role_name, salary.monthly_salary 
from (((employee_salary
full outer join employees on employees.id = employee_salary.id)
full outer join salary on salary.id = employee_salary.id)
full outer join roles on roles.id = employee_salary.id)
where salary.monthly_salary between 1700 and 2300
order by salary.monthly_salary asc;

--31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select employees.employee_name, roles.role_name, salary.monthly_salary 
from (((employee_salary
full outer join employees on employees.id = employee_salary.id)
full outer join salary on salary.id = employee_salary.id)
full outer join roles on roles.id = employee_salary.id)
where salary.monthly_salary < 2300
order by salary.monthly_salary asc;

--32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select employees.employee_name, roles.role_name, salary.monthly_salary 
from (((employee_salary
full outer join employees on employees.id = employee_salary.id)
full outer join salary on salary.id = employee_salary.id)
full outer join roles on roles.id = employee_salary.id)
where salary.monthly_salary in (1100, 1500, 2000)
order by salary.monthly_salary asc;