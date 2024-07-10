--select * from [dbo].[Table_person]
--go 
--select * from [dbo].[Table_orders]


select * from
[dbo].[Table_person] left join [dbo].[Table_orders]    ---The second person take precedence in loan or purchase over others
on
[dbo].[Table_person].p_id = [dbo].[Table_orders].p_id

select * from
[dbo].[Table_person] right join [dbo].[Table_orders]
on
[dbo].[Table_person].p_id = [dbo].[Table_orders].p_id


select * from
[dbo].[Table_person] full join [dbo].[Table_orders]
on
[dbo].[Table_person].p_id = [dbo].[Table_orders].p_id


select * from
[dbo].[Table_person] inner join [dbo].[Table_orders]
on
[dbo].[Table_person].p_id = [dbo].[Table_orders].p_id

select * from
[dbo].[Table_person] left outer join [dbo].[Table_orders]
on
[dbo].[Table_person].p_id = [dbo].[Table_orders].p_id


select * from
[dbo].[Table_person] cross join [dbo].[Table_orders]


select A.lastname as person1, B.lastname as person2, A.city
from [dbo].[Table_person] as A, [dbo].[Table_person] as B
where A.p_id<>B.p_id
and A.city = B.city
order by A.city


