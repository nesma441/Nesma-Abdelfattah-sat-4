CREATE TABLE governrate(
name varchar (255),
address varchar(300),
 PRIMARY key (name),
 FOREIGN KEY (store_address) REFERENCES stores(address)
);

CREATE TABLE stores(
name varchar (255),
address varchar(300),
 PRIMARY key (address)
);

CREATE TABLE product(
name varchar (255),
price integer ,
 description text,
 supplier_name varchar(255),
 PRIMARY key (name),
 FOREIGN KEY (supplier_name) REFERENCES supplier(name)
);


CREATE TABLE found(
product_code varchar (255),
store_address varchar(255),
 FOREIGN KEY (store_address) REFERENCES stores(address),
 FOREIGN KEY (product_code) REFERENCES product (code)
);


INSERT INTO `product`(`supplier_name`, `name`, `price`, `code`) VALUES ('lc-waikiki' , 'blouse',277,'b2-3339939');
/* this command make an error :-
#1452 - Cannot add or update a child row: a foreign key constraint fails (`store_management`.`product`, CONSTRAINT `product_ibfk_1` FOREIGN KEY (`supplier_name`) REFERENCES `supplier` (`name`))
*/