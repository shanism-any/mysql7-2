# 取得每个company中最高薪水的人员名字
```sql

select a.id,a.name,a.salary,a.companyId from Employee a join (select companyId, max(salary) max_salary from Employee group by companyId) b on a.companyId= b.companyId and a.salary = b.max_salary;

```
# 输出结果包含公司名称和人员名称：companyName name
```sql
select companyName,name from Employee,Company where Employee.companyId = Company.id;
```
