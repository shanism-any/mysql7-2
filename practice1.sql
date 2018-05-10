# 1.创建数据库employee_db

```sql
create DATABASE employee_db;
```

# 2.在数据库employee_db中创建table：`Employee`

```sql
use employee_db;

CREATE TABLE IF NOT EXISTS `Employee`(
   `id` INT,
   `name` VARCHAR(20) NOT NULL,
   `age` INT,
   `gender` VARCHAR(20) NOT NULL,
   `companyId` INT,
   `salary` INT,
   PRIMARY KEY ( `id` )
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
```

# 3.将`employee-data.csv`文件中的数据导入数据表Employee中

```sql
LOAD DATA INFILE 'F:/MySQL基础7-2/文档/employee-data.csv'
INTO TABLE Employee
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\r\n';
```

# 4.在数据库employee_db中创建table：`Company`

```sql
CREATE TABLE IF NOT EXISTS `Company`(
   `id` INT,
   `companyName` VARCHAR(100) NOT NULL,
   `employeesNumber` INT,
   PRIMARY KEY ( `id` )
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
```

# 5.将`company-data.csv`文件中的数据导入Company数据表中

```sql
LOAD DATA INFILE 'company-data.csv'
INTO TABLE Company
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\r\n';
```

# 6.找出Employee表中姓名包含`n`字符并且薪资大于6000的雇员所有个人信息

```sql
select * from Employee where name like '%n%' and salary > 6000;
```

# ps:本练习中只需要将6的结果复制到`result.txt`文件中