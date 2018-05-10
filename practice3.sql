#取得平均薪水最高的公司
```sql
select c.companyId, c.companyName, c.avgSalary from (select  a.companyId, b.companyName, avg(a.salary) avgSalary from Employee a join Company b on a.companyId = b.id  group by a.companyId) c order by c.avgSalary desc limit 1;
```
#输出公司名称和平均薪水：companyName avgSalary
```sql
select  b.companyName, avg(a.salary) avgSalary from Employee a join Company b on a.companyId = b.id  group by a.companyId;
```

