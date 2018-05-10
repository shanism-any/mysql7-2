# 找出薪水在公司的平均薪水之上的人员名字
```sql
select a.id,a.name,a.salary from Employee a join (select companyId, avg(salary) avg_salary from Employee group by companyId) b on a.companyId= b.companyId and a.salary > b.avg_salary;
```

# 输出标准中包含Employee中所有字段和该employee所在公司名称以及该公司平均薪资：
# id | name | age | gender | companyId | salary | companyName | avgsal
```sql
select a.id,a.name,a.age,a.gender,a.companyId,a.salary,b.companyName,b.avgsal from Employee a join (select companyId, companyName, avg(salary) avgsal from Employee,Company where Employee.companyId = Company.id group by companyId) b on a.companyId=b.companyId;
```