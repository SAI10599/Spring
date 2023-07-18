Use cis;
create table Employee( first_name varchar(225), 
last_name varchar(225), 
job_start_date date, 
salary int);


alter table Employee add column department varchar(200);

select max(salary) from employee;

select department, count(department) from Employee
group by department;

update consultant_detail 
set email_address="a@gmail.com"
where id=1;

select consultant_detail.first_name,consultant_id, count(consultant_id) 
from submission join consultant_detail on 
submission.consultant_id=consultant_detail.id
group by submission.consultant_id;

select consultant_detail.first_name,consultant_id, count(consultant_id), submission_date
from submission join consultant_detail on 
submission.consultant_id=consultant_detail.id
group by submission.consultant_id,submission_date;

Delete from submission
where pay_rate is null;

select count(*)
from submission join consultant_detail on
submission.consultant_id=consultant_detail.id
join lead_detail on 
consultant_detail.lead_id=lead_detail.id
where lead_detail.first_name="Tejan" and submission.submission_date='2023-07-07';

select lead_detail.id,lead_detail.first_name, count(*)
from submission join consultant_detail on
submission.consultant_id=consultant_detail.id
join lead_detail on 
consultant_detail.lead_id=lead_detail.id
group by lead_detail.id;

