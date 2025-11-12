select * from emp

select * from emp where job in ('CLERK','ANALYST') order by job desc

select *, datediff(month,HIREDATE,getdate()) as exp from emp
where (sal/30)>100

select * from emp where HIREDATE between '1981-01-01' and '1981-12-31'

with cte as(
select *, (sal*12) as ann_sal from emp)
select * from cte
where ann_sal between '22000' and '45000'

select * from emp where sal*12 between '22000' and '45000'

select ename  from emp where ename like 'S%' and len(ename)='5'

select ename  from emp where ename like '__R%' and len(ename)='4'

select ename  from emp where ename like 'S%' and ename like '%H'
select ename  from emp where ename like 'S%H'

select * from emp where month(HIREDATE) like '_a%'

select sal from emp where len(sal)=4 and sal like '%0'

select * from emp where ename like '%ll%'


select * from emp where year(HIREDATE) like '__8%'

select * from emp where EMPNO not like '78%'

select * from emp where month(HIREDATE) != '03'