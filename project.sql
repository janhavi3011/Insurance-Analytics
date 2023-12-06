-- placed achievement table --
create table placed_achievement select client_name, Account_executive,branch_name,solution_group,income_class,amount,income_due_date, Revenue_transaction_type from brokerage
union all select client_name, branch_name,solution_group,Account_Executive,income_class,amount,income_due_date,revenue_transaction_type from fees;
select * from placed_achievement;

-- common table---
create table common_table as select * from placed_achievement;
select * from common_table;
alter table common_table drop column client_name, drop column branch_name, drop column solution_group, 
drop column amount, drop column income_due_date, drop column revenue_transaction_type;

