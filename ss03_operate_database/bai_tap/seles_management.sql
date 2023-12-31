drop database if exists seles_management;
create database if not exists seles_management;
use seles_management;
create table customer(
	c_id int not null primary key unique,
    c_name varchar(60) not null,
    c_age tinyint not null,
    check(c_age >= 18)
);
create table product(
	p_id int not null primary key unique,
    p_name varchar(60) not null,
    p_price int not null,
    check(p_price > 0)
);
create table order_cus(
	o_id int not null primary key unique,   
    c_id int not null,
    o_date date not null,
    o_total_price long,
    foreign key(c_id) references customer(c_id)
);
create table order_detail(
	o_id int not null,
    p_id int not null,
    od_qty int not null,
    check(od_qty > 0),
    primary key(o_id, p_id),
    foreign key(o_id) references order_cus(o_id),
    foreign key(p_id) references product(p_id)
);
insert into customer
value (1, 'Minh Quan', 18),
(2, 'Ngoc Oanh', 20),
(3, 'Hong Ha', 50);

insert into order_cus(o_id, c_id,o_date)
value (1, 1, '2006-03-21'),
(2, 2, '2006-03-23'),
(3, 1, '2006-03-16');

insert into product
value (1, 'May Giat', 3),
(2, 'Tu Lanh', 5),
(3, 'Dieu Hoa', 7),
(4, 'Quat', 1),
(5, 'Bep Dien', 2);

insert into order_detail
value (1, 1, 3),
(1, 3, 7),
(1, 4, 2),
(2, 1, 1),
(3, 1, 8),
(2, 5, 4),
(2, 3, 3);

-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
SELECT 
    o_id, o_date, o_total_price
FROM
    order_cus oc;

-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
SELECT 
    GROUP_CONCAT(DISTINCT c.c_name) AS khach_hang,
    GROUP_CONCAT(DISTINCT pd.p_name) AS san_pham
FROM
    (order_cus AS ocs
    JOIN customer AS c ON ocs.c_id = c.c_id
    JOIN order_detail AS odt ON odt.o_id = ocs.o_id
    JOIN product AS pd ON pd.p_id = odt.p_id);


-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
SELECT 
    cus.c_name
FROM
    customer AS cus
        LEFT JOIN
    order_cus AS ocu ON cus.c_id = ocu.c_id
WHERE
    ocu.c_id IS NULL;

-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn
SELECT 
    ocu.o_id,
    ocu.o_date,
    SUM(p.p_price * odt.od_qty) AS gia_tien
FROM
    (order_cus AS ocu
    JOIN order_detail AS odt ON odt.o_id = ocu.o_id
    JOIN product AS p ON p.p_id = odt.p_id)
GROUP BY ocu.o_id;
