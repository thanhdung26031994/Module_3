use demo2006;
select * from `order`;
select * from customer;
select * from orderdetail;
select * from product;

-- In ra tên khách hàng và thời gian mua hàng.
select c.name, o.time 
from `order` as o
join customer as c on c.id = o.id;
-- In ra tên khách hàng và tên sản phẩm đã mua
select group_concat(distinct c.name) as Khach_Hang, group_concat(distinct p.name) as Ten_San_Pham
from `order` ord
join customer c on ord.id = c.id
join orderdetail od on od.id = ord.id
join product p on p.id = od.id;