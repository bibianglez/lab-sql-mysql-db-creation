USE lab_mysql;

INSERT INTO `invoices` (`invoice_id`, `date`, `invoice_n`, `customer_id`, `car_id`, `date`)
VALUES
	(1, STR_TO_DATE('22-08-2018', '%d-%m-%Y'), 852399038, 1, 1, 3),
    (2, STR_TO_DATE('31-12-2018', '%d-%m-%Y'), 731166526, 3, 3, 5),
    (3, STR_TO_DATE('22-01-2019', '%d-%m-%Y'), 271135104, 2, 2, 7);
    
INSERT INTO `salesperson` (`sp_id`, `name`, `store`, `staff_id`)
VALUES
    (1, 'Petey Cruiser', 'Madrid', '00001'),
    (2, 'Anna Sthesia', 'Barcelona', '00002'),
    (3, 'Paul Molive', 'Berlin', '00003'),
    (4, 'Gail Forcewind', 'Paris', '00004'),
    (5, 'Paige Turner', 'Mimia', '00005'),
    (6, 'Bob Frapples', 'Mexico City', '00006'),
    (7, 'Walter Melon', 'Amsterdam', '00007'),
    (8, 'Shonda Leer', 'São Paulo', '00008');
    
INSERT INTO `cars` (`car_id`, `VIN`, `Manufacturer`, `Model`, `Year`, `Color`)
VALUES
    (1, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
    (2, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
    (3, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
    (4, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
    (5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
    (6, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');
    
INSERT INTO `customers` (`customer_id`, `name`, `email`, `phone`, `address_id`)
VALUES
    (1, 'Pablo Picasso', '-', '+34 636 17 63 82', 1),
    (2, 'Abraham Lincoln', '-', '+1 305 907 7086', 2),
    (3, 'Napoléon Bonaparte', '-', '+33 1 79 75 40 00', 3);
    
  
INSERT INTO `address` (`address_id`, `address`, `city`, `state`, `country`, `pc`)
VALUES
    (1, 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
    (2, '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
    (3, '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');  
  