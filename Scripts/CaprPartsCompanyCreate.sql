-- Create Customer Table
DROP TABLE IF EXISTS public."Orders";
DROP TABLE IF EXISTS public."Customer";

CREATE TABLE IF NOT EXISTS public."Customer"
(
    "Id" serial,
    "CustomerNumber" integer,
    "FirstName" character varying(256),
    "LastName" character varying(256),
    "Address" character varying(256),
    "City" character varying(256),
    "State" character varying(256),
    "PostalCode" character varying(256),
    "Country" character varying(256),
    PRIMARY KEY ("Id")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Customer"
    OWNER to postgres;
    
-- Insert data
INSERT INTO public."Customer"(
	"CustomerNumber",
    "FirstName",
    "LastName",
    "Address",
    "City",
    "State",
    "PostalCode",
    "Country")
	VALUES 
	(305,'Joseph','Smith','14 Main St','Orlando','Florida','32789','USA'),
	(683,'Hank','Jones','26 Maple Ave','Guadalajara','Jalisco','45090','Mexico'),
	(918,'Frank','Martinez','27 Pine St','Montreal','Quebec','H3B','Canada'),
	(501,'Martin','Lopez','22 Jamaica Ave','Queens','New York','11435','USA'),
	(511,'Linda','Davis','219 Dune Rd','Tampa','Florida','33592','USA'),
	(419,'Susan','Wilson','46 Park Ave','New York','New York','10022','USA');

-- Create Orders Table
DROP TABLE IF EXISTS public."Orders";

CREATE TABLE IF NOT EXISTS public."Orders"
(
    "Id" serial,
    "CustomerId" integer,
    "OrderDate" timestamp,
    "ShippedDate" timestamp,
    "ItemName" character varying(256),
    "ItemNumber" integer,
    "ItemQuantity" integer,
    "Price" money,
    PRIMARY KEY ("Id"),
    FOREIGN KEY ("CustomerId") REFERENCES "Customer"("Id")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Orders"
    OWNER to postgres;
    
INSERT INTO public."Orders"(
	"CustomerId",
    "OrderDate",
    "ShippedDate",
    "ItemName",
    "ItemNumber",
    "ItemQuantity",
    "Price")
	VALUES
(1,'2001-07-13','2001-08-21','Flange',90133,9,31.29),
(1,'2003-08-21','2003-09-16','Motor',39419,2,101.63),
(2,'2019-10-11','2019-10-11','Fan',715901,7,93.99),
(3,'2021-06-19','2021-06-21','Muffler',81945,1,89.99),
(3,'2021-11-14','2021-11-26','Brakes',47109,4,100.99),
(3,'2022-04-17','2022-05-15','Lamp',50927,2,49.99),
(4,'2021-11-14','2021-11-26','Brakes',47109,4,100.99);
