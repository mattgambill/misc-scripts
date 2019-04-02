CREATE TABLE asset(
   id                        INTEGER  NOT NULL PRIMARY KEY 
  ,Vendor                    VARCHAR(16) NOT NULL
  ,Brand                     VARCHAR(11)
  ,Model                     VARCHAR(66)
  ,Description               VARCHAR(23) NOT NULL
  ,Quantity                  INTEGER  NOT NULL
  ,Replacement_Cost_per_Item DECIMAL(13,2) NOT NULL
  ,Total_Replacement_Cost    DECIMAL(13,2) NOT NULL
  ,Date_Purchased            DATE  NOT NULL
  ,Property_Type             VARCHAR(34) NOT NULL
);
INSERT INTO asset(id,Vendor,Brand,Model,Description,Quantity,Replacement_Cost_per_Item,Total_Replacement_Cost,Date_Purchased,Property_Type) VALUES (1,'Ashley Furniture',NULL,NULL,'Twin Bed Frame',1,300.00,300.00,'2008-12-01','Furniture');
INSERT INTO asset(id,Vendor,Brand,Model,Description,Quantity,Replacement_Cost_per_Item,Total_Replacement_Cost,Date_Purchased,Property_Type) VALUES (2,'Ashley Furniture',NULL,NULL,'Dresser',1,300.00,300.00,'2005-06-01','Furniture');
INSERT INTO asset(id,Vendor,Brand,Model,Description,Quantity,Replacement_Cost_per_Item,Total_Replacement_Cost,Date_Purchased,Property_Type) VALUES (3,'Mom',NULL,NULL,'Book Shelf',1,100.00,100.00,'2003-06-01','Furniture');
INSERT INTO asset(id,Vendor,Brand,Model,Description,Quantity,Replacement_Cost_per_Item,Total_Replacement_Cost,Date_Purchased,Property_Type) VALUES (4,'Amazon','Crockpot','Artisan 7 Quart Enameled Cast Iron Round Dutch Oven, Sapphire Blue','Blue Cast Iron',1,50.00,50.00,'2018-08-01','Kitchen Equipment');
INSERT INTO asset(id,Vendor,Brand,Model,Description,Quantity,Replacement_Cost_per_Item,Total_Replacement_Cost,Date_Purchased,Property_Type) VALUES (5,'Walmart',NULL,NULL,'Cast Iron Skillet',1,40.00,40.00,'2018-08-01','Kitchen Equipment');
INSERT INTO asset(id,Vendor,Brand,Model,Description,Quantity,Replacement_Cost_per_Item,Total_Replacement_Cost,Date_Purchased,Property_Type) VALUES (6,'Walmart',NULL,NULL,'Collinder',1,20.00,20.00,'2018-06-01','Kitchen Equipment');
INSERT INTO asset(id,Vendor,Brand,Model,Description,Quantity,Replacement_Cost_per_Item,Total_Replacement_Cost,Date_Purchased,Property_Type) VALUES (7,'Amazon',NULL,NULL,'Cast iron Wok',1,30.00,30.00,'2018-06-01','Kitchen Equipment');
INSERT INTO asset(id,Vendor,Brand,Model,Description,Quantity,Replacement_Cost_per_Item,Total_Replacement_Cost,Date_Purchased,Property_Type) VALUES (8,'Amazon','Acurite','13022','Alarm Clock',1,40.00,40.00,'2016-07-01','Household Goods');
INSERT INTO asset(id,Vendor,Brand,Model,Description,Quantity,Replacement_Cost_per_Item,Total_Replacement_Cost,Date_Purchased,Property_Type) VALUES (9,'Amazon',NULL,NULL,'Valet',2,35.00,70.00,'2018-06-01','Household Goods');
INSERT INTO asset(id,Vendor,Brand,Model,Description,Quantity,Replacement_Cost_per_Item,Total_Replacement_Cost,Date_Purchased,Property_Type) VALUES (10,'Best Buy','Bose','QC35','Headphones',1,300.00,300.00,'2017-02-01','Electronics and Accesories');
INSERT INTO asset(id,Vendor,Brand,Model,Description,Quantity,Replacement_Cost_per_Item,Total_Replacement_Cost,Date_Purchased,Property_Type) VALUES (11,'Google','Google','Pixel 1','Phone',1,750.00,750.00,'2017-02-01','Electronics and Accesories');
INSERT INTO asset(id,Vendor,Brand,Model,Description,Quantity,Replacement_Cost_per_Item,Total_Replacement_Cost,Date_Purchased,Property_Type) VALUES (12,'Dell','Dell','XPS 9360','Laptop',1,800.00,800.00,'2017-02-01','Electronics and Accesories');
INSERT INTO asset(id,Vendor,Brand,Model,Description,Quantity,Replacement_Cost_per_Item,Total_Replacement_Cost,Date_Purchased,Property_Type) VALUES (13,'Best Buy','Igsignia','NS-43DR620NA18','TV',1,300.00,300.00,'2018-01-01','Electronics and Accesories');
INSERT INTO asset(id,Vendor,Brand,Model,Description,Quantity,Replacement_Cost_per_Item,Total_Replacement_Cost,Date_Purchased,Property_Type) VALUES (14,'Loft Violin Shop','Scott Cao','Student 750','Violin',1,1200,1,200.00,'2013-12-01','Musical Instruments and Accesories');
INSERT INTO asset(id,Vendor,Brand,Model,Description,Quantity,Replacement_Cost_per_Item,Total_Replacement_Cost,Date_Purchased,Property_Type) VALUES (15,'Loft Violin Shop','John Brasil','Pernambuco Nickel Mounted Bow','Violin Bow',1,425,425.00,'2018-12-03','Musical Instruments and Accesories');
INSERT INTO asset(id,Vendor,Brand,Model,Description,Quantity,Replacement_Cost_per_Item,Total_Replacement_Cost,Date_Purchased,Property_Type) VALUES (16,'Sam Ash',NULL,NULL,'Carbon Fiber Violin Bow',1,125,125.00,'2010-12-25','Musical Instruments and Accesories');
INSERT INTO asset(id,Vendor,Brand,Model,Description,Quantity,Replacement_Cost_per_Item,Total_Replacement_Cost,Date_Purchased,Property_Type) VALUES (17,'Amazon','Coleman','Cooler Quad Portable Camping Chair, Black','Chair',1,25,25.00,'2018-09-01','Household Goods');
INSERT INTO asset(id,Vendor,Brand,Model,Description,Quantity,Replacement_Cost_per_Item,Total_Replacement_Cost,Date_Purchased,Property_Type) VALUES (18,'Amazon','Carhartt','Men''s Oakman Sandstone Twill Original-Fit Work Shirt','Shirt',2,45,90.00,'2018-09-01','Clothes');
INSERT INTO asset(id,Vendor,Brand,Model,Description,Quantity,Replacement_Cost_per_Item,Total_Replacement_Cost,Date_Purchased,Property_Type) VALUES (19,'Amazon','Thule','990XT','Bike Rack',1,329,329.00,'2016-04-01','Sports and Outdoors');
INSERT INTO asset(id,Vendor,Brand,Model,Description,Quantity,Replacement_Cost_per_Item,Total_Replacement_Cost,Date_Purchased,Property_Type) VALUES (20,'Amazon','Vibrelli','Performance Bike Floor Pump','Bike Pump',1,35,35.00,'2018-07-01','Sports and Outdoors');
INSERT INTO asset(id,Vendor,Brand,Model,Description,Quantity,Replacement_Cost_per_Item,Total_Replacement_Cost,Date_Purchased,Property_Type) VALUES (21,'Sears','Craftsman',NULL,'Hammer',1,35,35.00,'2018-04-01','Hand Tools');
INSERT INTO asset(id,Vendor,Brand,Model,Description,Quantity,Replacement_Cost_per_Item,Total_Replacement_Cost,Date_Purchased,Property_Type) VALUES (22,'Sears','Craftsman','48101','Camp Axe',1,30,30.00,'2018-04-01','Hand Tools');
