use demo2006;
select * from `order`;
select * from customer;
select * from orderdetail;
SELECT 
    *
FROM
    product;

-- In ra các sản phẩm có số lượng từ 30 trở lên.
SELECT 
    *
FROM
    product
WHERE
    quantity >= 30;
-- In ra các sản phẩm có số lượng từ 30 trở lên và có giá trong khoảng 100 đến 300.
SELECT 
    *
FROM
    product
WHERE
    quantity >= 30
        AND (price BETWEEN 100 AND 300);
-- In ra thông tin khách hàng tuổi lớn hơn 18
SELECT 
    *
FROM
    customer
WHERE
    age > 18;
-- In ra thông tin khách hàng họ Nguyễn và lớn hơn 20 tuổi
SELECT 
    *
FROM
    customer
WHERE
    name LIKE 'Nguyễn%' AND age > 20;
-- In ra sản phẩm tên bắt đầu bằng chữ M
SELECT 
    *
FROM
    product
WHERE
    name LIKE 'M%';
-- In ra sản phẩm kết thúc bằng chữ E
SELECT 
    *
FROM
    product
WHERE
    name LIKE '%e';
-- In ra danh sách sản phẩm số lượng tăng dần
SELECT 
    *
FROM
    product
ORDER BY quantity;
-- In ra danh sách sản phẩm giá giảm dần
SELECT 
    *
FROM
    product
ORDER BY price DESC;
-- In ra tên khách hàng và thời gian mua hàng.
SELECT 
    c.name, o.time
FROM
    `order` AS o
        JOIN
    customer AS c ON c.id = o.id;
-- In ra tên khách hàng và tên sản phẩm đã mua
SELECT 
    GROUP_CONCAT(DISTINCT c.name) AS Khach_Hang,
    GROUP_CONCAT(DISTINCT p.name) AS Ten_San_Pham
FROM
    customer AS c
        JOIN
    `order` AS o ON c.id = o.customerId
        JOIN
    orderdetail AS od ON o.id = od.orderId
        JOIN
    product AS p ON p.id = od.productId;
-- In ra thông tin hóa đơn và sản phẩm bán ra trong ngày 19/6/2006 và ngày 20/6/2006
SELECT 
    o.*, p.*
FROM
    `order` AS o
        JOIN
    orderdetail AS od ON o.id = od.orderId
        JOIN
    product AS p ON od.productId = p.id
WHERE
    time BETWEEN '2006-06-19 00:00:00' AND '2006-06-20 00:00:00';
/*Mức 3*/
--  In ra tổng số lượng sản phẩm giá nhỏ hơn 300
SELECT 
    SUM(quantity) AS `Tổng số lượng sản phẩm`
FROM
    product
WHERE
    price < 300;
--
SELECT 
    count(id) AS `Tổng số sản phẩm`
FROM
    product
WHERE
    price < 300;
-- In tổng số sản phẩm theo từng giá
SELECT 
    price, SUM(quantity)
FROM
    product
GROUP BY price;
-- In ra tổng số tiền nếu bán hết tất cả sản phẩm.
SELECT SUM(price * quantity) as `Tổng số tiền bán hết`
from product;
-- In ra mã hoá đơn và giá trị hoá đơn
select od.orderId as `Hoá đơn` , sum(p.price * od.quantity) as tong
from orderdetail od 
join product p on od.productId = p.id
group by orderId;