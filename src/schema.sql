create table product (
	id serial primary key,
	display_name text not null,
	price numeric not null
);

create table seller (
	id serial primary key,
	display_name text not null,
	daily_revenue_target numeric
);

create table seller_summary (
	seller_id int not null references seller(id),
	date_day date not null,
	total_revenue numeric not null,
	unique (seller_id, date_day)
);

create table transaction (
	date_day date not null,
	product_id int not null references product(id),
	seller_id int not null references seller(id),
	units_sold int not null
);


insert into product (display_name, price) values
	('Apple', 4.50),
	('Banana', 3.00),
	('Orange', 2.50),
	('Pear', 3.50),
	('Plum', 2.00),
	('Lemon', 1.00),
	('Lime', 1.00),
	('Cherry', 0.50),
	('Raspberry', 5.00),
	('Grapefruit', 6.00),
	('Kiwi', 3.25),
	('Mango', 5.50);

insert into seller (display_name, daily_revenue_target) values
	('Luke', 800.00),
	('Leia', 1000.00),
	('Han', null),
	('Chewie', 2000.00);

insert into "transaction" (date_day, product_id, seller_id, units_sold) values
	('2021-01-01', 6, 4, 30),
	('2021-01-02', 11, 2, 82),
	('2021-01-01', 9, 3, 63),
	('2021-01-02', 10, 1, 43),
	('2021-01-02', 12, 4, 3),
	('2021-01-02', 8, 2, 85),
	('2021-01-02', 7, 2, 57),
	('2021-01-02', 4, 1, 26),
	('2021-01-02', 7, 1, 96),
	('2021-01-02', 1, 2, 28),
	('2021-01-02', 5, 1, 40),
	('2021-01-02', 1, 2, 69),
	('2021-01-02', 10, 1, 47),
	('2021-01-02', 8, 2, 59),
	('2021-01-02', 11, 1, 38),
	('2021-01-02', 10, 1, 93),
	('2021-01-01', 9, 2, 62),
	('2021-01-02', 7, 1, 61),
	('2021-01-02', 1, 1, 88),
	('2021-01-02', 12, 4, 82),
	('2021-01-02', 6, 3, 28),
	('2021-01-02', 11, 1, 52),
	('2021-01-02', 3, 2, 14),
	('2021-01-02', 7, 1, 41),
	('2021-01-02', 5, 1, 88),
	('2021-01-02', 9, 2, 90),
	('2021-01-02', 8, 3, 100),
	('2021-01-02', 8, 3, 23),
	('2021-01-01', 2, 2, 55),
	('2021-01-01', 7, 4, 39),
	('2021-01-01', 9, 3, 4),
	('2021-01-02', 9, 2, 65),
	('2021-01-02', 10, 4, 20),
	('2021-01-01', 11, 4, 99),
	('2021-01-02', 9, 3, 66),
	('2021-01-02', 2, 1, 20),
	('2021-01-02', 2, 1, 61),
	('2021-01-02', 7, 2, 20),
	('2021-01-01', 11, 3, 77),
	('2021-01-01', 6, 2, 41),
	('2021-01-02', 8, 1, 7),
	('2021-01-02', 4, 4, 28),
	('2021-01-02', 11, 2, 89),
	('2021-01-01', 2, 1, 67),
	('2021-01-02', 11, 1, 100),
	('2021-01-01', 8, 2, 38),
	('2021-01-02', 12, 2, 6),
	('2021-01-02', 11, 3, 31),
	('2021-01-01', 3, 1, 77),
	('2021-01-02', 8, 1, 2),
	('2021-01-01', 8, 4, 62),
	('2021-01-02', 4, 2, 5),
	('2021-01-02', 6, 3, 72),
	('2021-01-02', 3, 3, 54),
	('2021-01-02', 4, 4, 4),
	('2021-01-01', 5, 3, 89),
	('2021-01-01', 2, 3, 6),
	('2021-01-02', 4, 2, 24),
	('2021-01-02', 5, 4, 63),
	('2021-01-02', 5, 4, 1),
	('2021-01-02', 12, 3, 14),
	('2021-01-02', 9, 4, 45),
	('2021-01-01', 2, 4, 88),
	('2021-01-02', 8, 1, 13),
	('2021-01-02', 4, 4, 35),
	('2021-01-02', 8, 2, 73),
	('2021-01-01', 6, 3, 18),
	('2021-01-01', 10, 2, 100),
	('2021-01-02', 4, 3, 77),
	('2021-01-02', 5, 1, 1),
	('2021-01-02', 4, 4, 58),
	('2021-01-02', 1, 1, 84),
	('2021-01-01', 3, 4, 72),
	('2021-01-02', 6, 1, 69),
	('2021-01-02', 9, 2, 65),
	('2021-01-02', 4, 4, 62),
	('2021-01-02', 1, 4, 88),
	('2021-01-02', 11, 3, 61),
	('2021-01-01', 1, 4, 1),
	('2021-01-02', 11, 1, 24),
	('2021-01-01', 4, 2, 40),
	('2021-01-01', 8, 2, 59),
	('2021-01-02', 1, 2, 99),
	('2021-01-02', 10, 3, 1),
	('2021-01-02', 1, 1, 2),
	('2021-01-02', 9, 2, 47),
	('2021-01-01', 6, 3, 51),
	('2021-01-02', 12, 4, 91),
	('2021-01-02', 2, 1, 54),
	('2021-01-02', 3, 2, 52),
	('2021-01-02', 7, 4, 89),
	('2021-01-02', 7, 4, 24),
	('2021-01-02', 3, 1, 21),
	('2021-01-02', 8, 2, 32),
	('2021-01-02', 4, 1, 54),
	('2021-01-02', 2, 1, 52),
	('2021-01-02', 11, 1, 30),
	('2021-01-02', 4, 1, 27),
	('2021-01-02', 9, 2, 22),
	('2021-01-02', 6, 1, 31);

insert into seller_summary
select
	seller_id, date_day,
	sum(units_sold * product.price) as total_revenue
from
	"transaction"
	join product on "transaction".product_id = product.id
group by seller_id, date_day