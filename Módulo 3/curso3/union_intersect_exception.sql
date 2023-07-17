-- Union, Except, and Intersect

use teste;
create table R(
A varchar(2)
);
create table S(
A varchar(2)
);

insert into R(A) values ('a1'),('a2'),('a2'),('a3');
insert into S(A) values ('a1'),('a1'),('a2'),('a2'),('a2'),('a3'),('a4'),('a5');

select * from S where A not in (select A from R); -- except -> 'not in'
select distinct R.A from R where R.A in (select S.A from S); -- intersect -> 'in'
(select distinct R.A from R)
    UNION
    (select distinct S.A from S);