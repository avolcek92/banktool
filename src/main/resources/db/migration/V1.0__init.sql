CREATE TABLE rule(
id bigint PRIMARY KEY,
is_student BOOLEAN,
age ENUM('AGE_0_17', 'AGE_18_64', 'AGE_65_PLUS'),
income ENUM('INCOME_0', 'INCOME_1_12000', 'INCOME_12000_40000', 'INCOME_40000_PLUS')
);

CREATE TABLE product (
   id bigint PRIMARY KEY,
   product_name varchar(255) not null,
   rule_id BIGINT REFERENCES rule(id)
);


-- Junior saver rules
insert into rule (id, is_student, age, income) values (1, false, 'AGE_0_17', 'INCOME_0');
insert into rule (id, is_student, age, income) values (2, false, 'AGE_0_17', 'INCOME_1_12000');
insert into rule (id, is_student, age, income) values (3, false, 'AGE_0_17', 'INCOME_12000_40000');
insert into rule (id, is_student, age, income) values (4, false, 'AGE_0_17', 'INCOME_40000_PLUS');

-- Current Acc rules
insert into rule (id, is_student, age, income) values (5, false, 'AGE_18_64', 'INCOME_1_12000');
insert into rule (id, is_student, age, income) values (6, false, 'AGE_18_64', 'INCOME_12000_40000');

-- Current Acc Plus rules
insert into rule (id, is_student, age, income) values (7, false, 'AGE_18_64', 'INCOME_40000_PLUS');

-- Student Acc rules
insert into rule (id, is_student, age, income) values (8, true, 'AGE_18_64', 'INCOME_0');
insert into rule (id, is_student, age, income) values (9, true, 'AGE_18_64', 'INCOME_1_12000');
insert into rule (id, is_student, age, income) values (10, true, 'AGE_18_64', 'INCOME_12000_40000');
insert into rule (id, is_student, age, income) values (11, true, 'AGE_18_64', 'INCOME_40000_PLUS');

-- Senior Acc rules
insert into rule (id, is_student, age, income) values (12, false, 'AGE_65_PLUS', 'INCOME_0');
insert into rule (id, is_student, age, income) values (13, false, 'AGE_65_PLUS', 'INCOME_1_12000');
insert into rule (id, is_student, age, income) values (14, false, 'AGE_65_PLUS', 'INCOME_12000_40000');
insert into rule (id, is_student, age, income) values (15, false, 'AGE_65_PLUS', 'INCOME_40000_PLUS');

-- Debit Card rules
insert into rule (id, is_student, age, income) values (16, false, 'AGE_18_64', 'INCOME_0');
insert into rule (id, is_student, age, income) values (17, true, 'AGE_18_64', 'INCOME_0');
insert into rule (id, is_student, age, income) values (18, true, 'AGE_18_64', 'INCOME_1_12000');
insert into rule (id, is_student, age, income) values (19, false, 'AGE_18_64', 'INCOME_1_12000');
insert into rule (id, is_student, age, income) values (20, false, 'AGE_65_PLUS', 'INCOME_0');
insert into rule (id, is_student, age, income) values (21, false, 'AGE_65_PLUS', 'INCOME_1_12000');

-- Credit Card rules
insert into rule (id, is_student, age, income) values (22, true, 'AGE_18_64', 'INCOME_12000_40000');
insert into rule (id, is_student, age, income) values (23, false, 'AGE_18_64', 'INCOME_12000_40000');
insert into rule (id, is_student, age, income) values (24, false, 'AGE_65_PLUS', 'INCOME_12000_40000');

-- Gold Credit Card rules
insert into rule (id, is_student, age, income) values (25, false, 'AGE_65_PLUS', 'INCOME_40000_PLUS');
insert into rule (id, is_student, age, income) values (26, false, 'AGE_18_64', 'INCOME_40000_PLUS');
insert into rule (id, is_student, age, income) values (27, true, 'AGE_18_64', 'INCOME_40000_PLUS');



insert into product (id, product_name, rule_id) values (1, 'Current Account', 5);
insert into product (id, product_name, rule_id) values (2, 'Current Account', 6);

insert into product (id, product_name, rule_id) values (3, 'Current Account Plus', 7);

insert into product (id, product_name, rule_id) values (4, 'Junior Saver Account', 1);
insert into product (id, product_name, rule_id) values (5, 'Junior Saver Account', 2);
insert into product (id, product_name, rule_id) values (6, 'Junior Saver Account', 3);
insert into product (id, product_name, rule_id) values (7, 'Junior Saver Account', 4);

insert into product (id, product_name, rule_id) values (8, 'Student Account', 8);
insert into product (id, product_name, rule_id) values (9, 'Student Account', 9);
insert into product (id, product_name, rule_id) values (10, 'Student Account', 10);
insert into product (id, product_name, rule_id) values (11, 'Student Account', 11);

insert into product (id, product_name, rule_id) values (12, 'Senior Account', 12);
insert into product (id, product_name, rule_id) values (13, 'Senior Account', 13);
insert into product (id, product_name, rule_id) values (14, 'Senior Account', 14);
insert into product (id, product_name, rule_id) values (15, 'Senior Account', 15);


insert into product (id, product_name, rule_id) values (16, 'Debit Card', 16);
insert into product (id, product_name, rule_id) values (17, 'Debit Card', 17);
insert into product (id, product_name, rule_id) values (18, 'Debit Card', 18);
insert into product (id, product_name, rule_id) values (19, 'Debit Card', 19);
insert into product (id, product_name, rule_id) values (20, 'Debit Card', 20);
insert into product (id, product_name, rule_id) values (21, 'Debit Card', 21);

insert into product (id, product_name, rule_id) values (22, 'Credit Card', 22);
insert into product (id, product_name, rule_id) values (23, 'Credit Card', 23);
insert into product (id, product_name, rule_id) values (24, 'Credit Card', 24);

insert into product (id, product_name, rule_id) values (25, 'Gold Credit Card', 25);
insert into product (id, product_name, rule_id) values (26, 'Gold Credit Card', 26);
insert into product (id, product_name, rule_id) values (27, 'Gold Credit Card', 27);

