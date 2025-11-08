select * from emp where job='manager'

select * from emp where EMPNO in (select mgr from emp)

select * from emp
where HIREDATE<'1981-01-01'

select empno, ename, sal,sal/30 as daily_sal, sal*12 as ann_sal from emp order by sal asc

alter table emp alter column salary rename sal as mon_sal


select empno,ename, job, hiredate, months_between(SYSDATE, HIREDATE) as emp from emp where empno in (select mgr from emp)

select empno,ename ,job,hiredate, datediff(month,hiredate, GETDATE()) exp
from emp where empno in (select mgr from emp);

Empno, Ename, Sal, Exp of all emps

select empno, ename, sal, DATEDIFF(month, hiredate, getdate()) as exp from emp
where mgr='7369'

select * from emp where comm>sal

select * from emp where HIREDATE>'1981-07-01' order by job asc;

select * from emp where hiredate > ('30-jun-81') order by job asc;