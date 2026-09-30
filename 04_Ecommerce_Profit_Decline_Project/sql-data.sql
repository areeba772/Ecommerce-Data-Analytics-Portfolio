create database Ecommerce1;
use Ecommerce1;
-- Step 1: create table 
CREATE TABLE ecommerce_sales_raw (
    Order_ID INT,
    Order_Date VARCHAR(50),
    Customer_ID VARCHAR(50),
    City VARCHAR(50),
    Category VARCHAR(50),
    Product VARCHAR(100),
    Quantity INT,
    Unit_Price DECIMAL(10,2),
    Discount DECIMAL(5,2),
    Sales DECIMAL(10,2),
    Cost DECIMAL(10,2),
    Profit DECIMAL(10,2),
    Order_Status VARCHAR(50),
    Payment_Method VARCHAR(50),
    Customer_Segment VARCHAR(50),
    Delivery_Days INT,
    Return_Flag INT
);

-- Step 2: insert values in table 
-- 50 Rows Unclean E-commerce Dataset
INSERT INTO ecommerce_sales_raw VALUES
(1001, '2026-01-15', 'CUST_101', 'Lahore', 'Electronics', 'Wireless Mouse', 2, 25.00, 0.05, 47.50, 30.00, 17.50, 'Completed', 'Card', 'Returning', 3, 0),
(1002, '15/01/2026', 'CUST_102', 'Karachi', 'Electronics', 'Bluetooth Speaker', 1, 45.00, 0.25, 33.75, 38.00, -4.25, 'Completed', 'COD', 'New', 6, 1),
(1003, '2026-01-16', NULL, 'Islamabad', 'Apparel', 'Running Shoes', 1, 80.00, 0.00, 80.00, 50.00, 30.00, 'Completed', 'Card', 'Premium', 2, 0),
(1004, '2026/01/17', 'CUST_104', 'Lahore', 'Fitness', 'Yoga Mat', 3, 30.00, 0.10, 81.00, 60.00, 21.00, 'Completed', 'COD', 'Returning', 4, 0),
(1002, '15/01/2026', 'CUST_102', 'Karachi', 'Electronics', 'Bluetooth Speaker', 1, 45.00, 0.25, 33.75, 38.00, -4.25, 'Completed', 'COD', 'New', 6, 1), -- Duplicate
(1005, '2026-01-18', 'CUST_105', 'Multan', 'Home', 'Coffee Maker', 1, 120.00, 0.40, 72.00, 95.00, -23.00, 'Completed', 'Card', 'New', 8, 1),
(1006, NULL, 'CUST_106', 'Karachi', 'electronics', 'Wireless Mouse', 5, 25.00, 0.30, 87.50, 75.00, 12.50, 'Cancelled', 'COD', 'Returning', 5, 0), -- Missing Date
(1007, '2026-01-20', 'CUST_107', 'Faisalabad', 'Apparel', 'Denim Jeans', 2, 60.00, 0.20, 96.00, 70.00, 26.00, 'Completed', 'Card', 'Premium', 3, 0),
(1008, '18/01/2026', 'CUST_108', 'Lahore', 'home', 'Coffee Maker', 1, 120.00, 0.00, 120.00, 90.00, 30.00, 'Completed', 'Bank', 'Returning', 2, 0),
(1009, '2026-01-22', NULL, 'Karachi', 'Fitness', 'Dumbbells', 1, 50.00, 0.00, 50.00, 35.00, 15.00, 'Returned', 'COD', 'New', 7, 1), -- Missing Cust ID
(1010, '2026/01/23', 'CUST_110', 'Islamabad', 'Electronics', 'Smart Watch', 1, 150.00, 0.50, 75.00, 110.00, -35.00, 'Completed', 'Card', 'Premium', 9, 1),
(1011, '2026-01-24', 'CUST_111', 'Peshawar', 'Beauty', 'Skincare Set', 2, 55.00, 0.15, 93.50, 70.00, 23.50, 'Completed', 'Card', 'New', 4, 0),
(1012, '25/01/2026', 'CUST_112', 'Lahore', 'Electronics', 'USB-C Hub', 3, 35.00, 0.00, 105.00, 70.00, 35.00, 'Completed', 'COD', 'Returning', 3, 0),
(1013, '2026-01-26', NULL, 'Karachi', 'Apparel', 'Cotton T-Shirt', 4, 20.00, 0.20, 64.00, 50.00, 14.00, 'Completed', 'Card', 'New', 5, 0),
(1014, '2026/01/27', 'CUST_114', 'Quetta', 'Home', 'Blender', 1, 75.00, 0.35, 48.75, 65.00, -16.25, 'Completed', 'COD', 'Premium', 7, 1),
(1015, '2026-01-28', 'CUST_115', 'Islamabad', 'Fitness', 'Resistance Bands', 2, 15.00, 0.00, 30.00, 18.00, 12.00, 'Completed', 'Card', 'Returning', 2, 0),
(1016, '29/01/2026', 'CUST_116', 'Lahore', 'Beauty', 'Hair Dryer', 1, 40.00, 0.40, 24.00, 35.00, -11.00, 'Completed', 'COD', 'New', 8, 1),
(1017, '2026-01-30', 'CUST_117', 'Faisalabad', 'Electronics', 'Wireless Mouse', 1, 25.00, 0.00, 25.00, 15.00, 10.00, 'Completed', 'Card', 'Returning', 3, 0),
(1018, '2026/01/31', NULL, 'Karachi', 'Home', 'Desk Lamp', 2, 30.00, 0.10, 54.00, 40.00, 14.00, 'Completed', 'Bank', 'New', 4, 0),
(1019, '2026-02-01', 'CUST_119', 'Multan', 'Apparel', 'Hoodie', 1, 50.00, 0.30, 35.00, 42.00, -7.00, 'Completed', 'COD', 'Returning', 6, 1),
(1020, '02/02/2026', 'CUST_120', 'Islamabad', 'Fitness', 'Water Bottle', 3, 20.00, 0.05, 57.00, 40.00, 17.00, 'Completed', 'Card', 'Premium', 3, 0),
(1021, '2026-02-03', 'CUST_121', 'Lahore', 'Beauty', 'Face Serum', 1, 35.00, 0.25, 26.25, 30.00, -3.75, 'Completed', 'COD', 'New', 5, 1),
(1022, '2026/02/04', 'CUST_122', 'Karachi', 'Electronics', 'Bluetooth Speaker', 2, 45.00, 0.20, 72.00, 76.00, -4.00, 'Cancelled', 'Card', 'Returning', 6, 0),
(1023, NULL, 'CUST_123', 'Peshawar', 'Home', 'Air Fryer', 1, 90.00, 0.45, 49.50, 75.00, -25.50, 'Completed', 'Card', 'Premium', 9, 1),
(1024, '2026-02-06', 'CUST_124', 'Lahore', 'Fitness', 'Yoga Mat', 2, 30.00, 0.00, 60.00, 40.00, 20.00, 'Completed', 'Bank', 'Returning', 2, 0),
(1025, '07/02/2026', NULL, 'Islamabad', 'Apparel', 'Running Shoes', 1, 80.00, 0.30, 56.00, 50.00, 6.00, 'Completed', 'COD', 'New', 5, 0),
(1026, '2026-02-08', 'CUST_126', 'Karachi', 'Electronics', 'Smart Watch', 2, 150.00, 0.35, 195.00, 220.00, -25.00, 'Completed', 'Card', 'Returning', 7, 1),
(1027, '2026/02/09', 'CUST_127', 'Faisalabad', 'Beauty', 'Makeup Brush Kit', 1, 25.00, 0.10, 22.50, 18.00, 4.50, 'Completed', 'COD', 'New', 3, 0),
(1028, '2026-02-10', 'CUST_128', 'Lahore', 'Home', 'Coffee Maker', 2, 120.00, 0.50, 120.00, 190.00, -70.00, 'Completed', 'Card', 'Premium', 10, 1),
(1029, '11/02/2026', 'CUST_129', 'Multan', 'Apparel', 'Denim Jeans', 1, 60.00, 0.00, 60.00, 35.00, 25.00, 'Completed', 'COD', 'Returning', 2, 0),
(1030, '2026-02-12', NULL, 'Karachi', 'Fitness', 'Dumbbells', 2, 50.00, 0.20, 80.00, 70.00, 10.00, 'Returned', 'Card', 'New', 6, 1),
(1031, '2026/02/13', 'CUST_131', 'Islamabad', 'Electronics', 'USB-C Hub', 1, 35.00, 0.00, 35.00, 22.00, 13.00, 'Completed', 'Bank', 'Returning', 3, 0),
(1032, '2026-02-14', 'CUST_132', 'Lahore', 'Beauty', 'Skincare Set', 1, 55.00, 0.40, 33.00, 40.00, -7.00, 'Completed', 'COD', 'New', 7, 1),
(1033, '15/02/2026', 'CUST_133', 'Peshawar', 'Home', 'Blender', 2, 75.00, 0.15, 127.50, 110.00, 17.50, 'Completed', 'Card', 'Premium', 4, 0),
(1034, '2026-02-16', 'CUST_134', 'Karachi', 'Apparel', 'Cotton T-Shirt', 3, 20.00, 0.10, 54.00, 40.00, 14.00, 'Completed', 'COD', 'Returning', 3, 0),
(1035, '2026/02/17', NULL, 'Faisalabad', 'Fitness', 'Resistance Bands', 1, 15.00, 0.00, 15.00, 9.00, 6.00, 'Completed', 'Card', 'New', 2, 0),
(1036, '2026-02-18', 'CUST_136', 'Lahore', 'Electronics', 'Wireless Mouse', 4, 25.00, 0.30, 70.00, 60.00, 10.00, 'Completed', 'Card', 'Returning', 5, 0),
(1037, '19/02/2026', 'CUST_137', 'Islamabad', 'Home', 'Desk Lamp', 1, 30.00, 0.00, 30.00, 18.00, 12.00, 'Completed', 'COD', 'Returning', 3, 0),
(1038, '2026-02-20', 'CUST_138', 'Karachi', 'Beauty', 'Hair Dryer', 2, 40.00, 0.25, 60.00, 70.00, -10.00, 'Completed', 'Card', 'New', 6, 1),
(1039, '2026/02/21', 'CUST_139', 'Multan', 'Apparel', 'Hoodie', 2, 50.00, 0.40, 60.00, 84.00, -24.00, 'Completed', 'COD', 'Premium', 8, 1),
(1040, '2026-02-22', NULL, 'Lahore', 'Fitness', 'Water Bottle', 2, 20.00, 0.00, 40.00, 26.00, 14.00, 'Completed', 'Bank', 'Returning', 2, 0),
(1041, '23/02/2026', 'CUST_141', 'Karachi', 'Electronics', 'Bluetooth Speaker', 1, 45.00, 0.50, 22.50, 38.00, -15.50, 'Completed', 'Card', 'New', 9, 1),
(1042, '2026-02-24', 'CUST_142', 'Islamabad', 'Beauty', 'Face Serum', 2, 35.00, 0.10, 63.00, 50.00, 13.00, 'Completed', 'COD', 'Returning', 3, 0),
(1043, '2026/02/25', 'CUST_143', 'Peshawar', 'Home', 'Air Fryer', 1, 90.00, 0.20, 72.00, 75.00, -3.00, 'Completed', 'Card', 'Premium', 6, 1),
(1044, '2026-02-26', 'CUST_144', 'Lahore', 'Apparel', 'Running Shoes', 1, 80.00, 0.00, 80.00, 50.00, 30.00, 'Completed', 'Card', 'Returning', 2, 0),
(1045, '27/02/2026', NULL, 'Karachi', 'Fitness', 'Yoga Mat', 2, 30.00, 0.30, 42.00, 40.00, 2.00, 'Returned', 'COD', 'New', 7, 1),
(1046, '2026-02-28', 'CUST_146', 'Faisalabad', 'Electronics', 'Smart Watch', 1, 150.00, 0.40, 90.00, 110.00, -20.00, 'Completed', 'Card', 'Premium', 8, 1),
(1047, '2026/03/01', 'CUST_147', 'Lahore', 'Beauty', 'Makeup Brush Kit', 2, 25.00, 0.15, 42.50, 36.00, 6.50, 'Completed', 'Bank', 'Returning', 4, 0),
(1048, '2026-03-02', 'CUST_148', 'Islamabad', 'Home', 'Coffee Maker', 1, 120.00, 0.00, 120.00, 90.00, 30.00, 'Completed', 'Card', 'Returning', 2, 0),
(1049, '03/03/2026', 'CUST_149', 'Karachi', 'Apparel', 'Denim Jeans', 2, 60.00, 0.25, 90.00, 70.00, 20.00, 'Completed', 'COD', 'New', 5, 0),
(1050, '2026-03-04', 'CUST_150', 'Multan', 'Electronics', 'USB-C Hub', 3, 35.00, 0.45, 57.75, 70.00, -12.25, 'Completed', 'Card', 'Premium', 9, 1),
(1051, '2026-03-05', 'CUST_151', 'Lahore', 'Electronics', 'Wireless Mouse', 2, 25.00, 0.00, 50.00, 30.00, 20.00, 'Completed', 'Card', 'Returning', 3, 0),
(1052, '06/03/2026', 'CUST_152', 'Karachi', 'Apparel', 'Denim Jeans', 1, 60.00, 0.20, 48.00, 35.00, 13.00, 'Completed', 'COD', 'New', 5, 0),
(1053, '2026-03-07', NULL, 'Islamabad', 'Home', 'Coffee Maker', 1, 120.00, 0.50, 60.00, 95.00, -35.00, 'Completed', 'Bank', 'Premium', 8, 1),
(1054, '2026/03/08', 'CUST_154', 'Multan', 'Fitness', 'Dumbbells', 2, 50.00, 0.10, 90.00, 70.00, 20.00, 'Completed', 'Card', 'Returning', 4, 0),
(1055, '2026-03-09', 'CUST_155', 'Peshawar', 'Beauty', 'Skincare Set', 1, 55.00, 0.30, 38.50, 40.00, -1.50, 'Completed', 'COD', 'New', 6, 1),
(1056, NULL, 'CUST_156', 'Lahore', 'Electronics', 'Smart Watch', 1, 150.00, 0.00, 150.00, 110.00, 40.00, 'Completed', 'Card', 'Premium', 2, 0),
(1057, '11/03/2026', 'CUST_157', 'Karachi', 'Home', 'Blender', 2, 75.00, 0.40, 90.00, 110.00, -20.00, 'Completed', 'Card', 'Returning', 7, 1),
(1058, '2026-03-12', 'CUST_158', 'Faisalabad', 'Apparel', 'Cotton T-Shirt', 3, 20.00, 0.15, 51.00, 37.50, 13.50, 'Completed', 'COD', 'New', 4, 0),
(1059, '2026/03/13', NULL, 'Islamabad', 'Fitness', 'Yoga Mat', 1, 30.00, 0.00, 30.00, 20.00, 10.00, 'Completed', 'Bank', 'Returning', 3, 0),
(1060, '2026-03-14', 'CUST_160', 'Lahore', 'Beauty', 'Hair Dryer', 1, 40.00, 0.50, 20.00, 35.00, -15.00, 'Completed', 'COD', 'New', 9, 1),
(1061, '15/03/2026', 'CUST_161', 'Karachi', 'Electronics', 'Bluetooth Speaker', 2, 45.00, 0.20, 72.00, 76.00, -4.00, 'Completed', 'Card', 'Returning', 6, 1),
(1062, '2026-03-16', 'CUST_162', 'Peshawar', 'Home', 'Air Fryer', 1, 90.00, 0.35, 58.50, 75.00, -16.50, 'Cancelled', 'COD', 'Premium', 8, 0),
(1063, '2026/03/17', NULL, 'Lahore', 'Fitness', 'Resistance Bands', 4, 15.00, 0.00, 60.00, 36.00, 24.00, 'Completed', 'Card', 'New', 2, 0),
(1064, '2026-03-18', 'CUST_164', 'Islamabad', 'Apparel', 'Hoodie', 1, 50.00, 0.10, 45.00, 42.00, 3.00, 'Completed', 'Bank', 'Returning', 4, 0),
(1065, '19/03/2026', 'CUST_165', 'Karachi', 'Beauty', 'Face Serum', 2, 35.00, 0.25, 52.50, 60.00, -7.50, 'Completed', 'COD', 'New', 6, 1),
(1066, '2026-03-20', 'CUST_166', 'Faisalabad', 'Electronics', 'USB-C Hub', 1, 35.00, 0.00, 35.00, 22.00, 13.00, 'Completed', 'Card', 'Returning', 3, 0),
(1067, '2026/03/21', 'CUST_167', 'Lahore', 'Home', 'Desk Lamp', 2, 30.00, 0.30, 42.00, 40.00, 2.00, 'Returned', 'COD', 'Premium', 7, 1),
(1068, '2026-03-22', NULL, 'Multan', 'Apparel', 'Running Shoes', 1, 80.00, 0.40, 48.00, 50.00, -2.00, 'Completed', 'Card', 'New', 8, 1),
(1069, '23/03/2026', 'CUST_169', 'Karachi', 'Fitness', 'Water Bottle', 3, 20.00, 0.05, 57.00, 40.00, 17.00, 'Completed', 'Bank', 'Returning', 3, 0),
(1070, '2026-03-24', 'CUST_170', 'Islamabad', 'Beauty', 'Makeup Brush Kit', 1, 25.00, 0.00, 25.00, 18.00, 7.00, 'Completed', 'COD', 'Returning', 2, 0),
(1071, '2026/03/25', 'CUST_171', 'Lahore', 'Electronics', 'Wireless Mouse', 3, 25.00, 0.10, 67.50, 45.00, 22.50, 'Completed', 'Card', 'New', 4, 0),
(1072, '2026-03-26', NULL, 'Karachi', 'Home', 'Coffee Maker', 2, 120.00, 0.50, 120.00, 190.00, -70.00, 'Completed', 'COD', 'Premium', 10, 1),
(1073, '27/03/2026', 'CUST_173', 'Peshawar', 'Apparel', 'Denim Jeans', 1, 60.00, 0.00, 60.00, 35.00, 25.00, 'Completed', 'Card', 'Returning', 3, 0),
(1074, '2026-03-28', 'CUST_174', 'Islamabad', 'Fitness', 'Dumbbells', 1, 50.00, 0.20, 40.00, 35.00, 5.00, 'Returned', 'Bank', 'New', 7, 1),
(1075, '2026/03/29', 'CUST_175', 'Lahore', 'Beauty', 'Skincare Set', 2, 55.00, 0.30, 77.00, 80.00, -3.00, 'Completed', 'COD', 'Returning', 6, 1),
(1076, '2026-03-30', 'CUST_176', 'Karachi', 'Electronics', 'Smart Watch', 1, 150.00, 0.45, 82.50, 110.00, -27.50, 'Completed', 'Card', 'Premium', 9, 1),
(1077, '31/03/2026', NULL, 'Multan', 'Home', 'Blender', 1, 75.00, 0.00, 75.00, 55.00, 20.00, 'Completed', 'COD', 'New', 3, 0),
(1078, '2026-04-01', 'CUST_178', 'Faisalabad', 'Apparel', 'Cotton T-Shirt', 2, 20.00, 0.10, 36.00, 25.00, 11.00, 'Completed', 'Card', 'Returning', 4, 0),
(1079, '2026/04/02', 'CUST_179', 'Lahore', 'Fitness', 'Yoga Mat', 2, 30.00, 0.00, 60.00, 40.00, 20.00, 'Completed', 'Bank', 'Returning', 2, 0),
(1080, '2026-04-03', 'CUST_180', 'Islamabad', 'Beauty', 'Hair Dryer', 1, 40.00, 0.35, 26.00, 35.00, -9.00, 'Completed', 'COD', 'New', 7, 1),
(1081, '04/04/2026', NULL, 'Karachi', 'Electronics', 'Bluetooth Speaker', 3, 45.00, 0.25, 101.25, 114.00, -12.75, 'Completed', 'Card', 'Premium', 6, 1),
(1082, '2026-04-05', 'CUST_182', 'Peshawar', 'Home', 'Air Fryer', 1, 90.00, 0.50, 45.00, 75.00, -30.00, 'Completed', 'COD', 'New', 9, 1),
(1083, '2026/04/06', 'CUST_183', 'Lahore', 'Fitness', 'Resistance Bands', 2, 15.00, 0.00, 30.00, 18.00, 12.00, 'Completed', 'Card', 'Returning', 3, 0),
(1084, '2026-04-07', 'CUST_184', 'Islamabad', 'Apparel', 'Hoodie', 2, 50.00, 0.20, 80.00, 84.00, -4.00, 'Completed', 'Bank', 'Returning', 5, 0),
(1085, '08/04/2026', 'CUST_185', 'Karachi', 'Beauty', 'Face Serum', 1, 35.00, 0.10, 31.50, 30.00, 1.50, 'Completed', 'COD', 'New', 4, 0),
(1086, '2026-04-09', NULL, 'Multan', 'Electronics', 'USB-C Hub', 2, 35.00, 0.00, 70.00, 44.00, 26.00, 'Completed', 'Card', 'Returning', 3, 0),
(1087, '2026/04/10', 'CUST_187', 'Faisalabad', 'Home', 'Desk Lamp', 1, 30.00, 0.00, 30.00, 18.00, 12.00, 'Completed', 'COD', 'Returning', 2, 0),
(1088, '2026-04-11', 'CUST_188', 'Lahore', 'Fitness', 'Water Bottle', 4, 20.00, 0.15, 68.00, 52.00, 16.00, 'Completed', 'Card', 'Premium', 4, 0),
(1089, '12/04/2026', 'CUST_189', 'Islamabad', 'Beauty', 'Makeup Brush Kit', 2, 25.00, 0.40, 30.00, 36.00, -6.00, 'Completed', 'Bank', 'New', 7, 1),
(1090, '2026-04-13', 'CUST_190', 'Karachi', 'Apparel', 'Running Shoes', 1, 80.00, 0.30, 56.00, 50.00, 6.00, 'Completed', 'COD', 'Returning', 5, 0),
(1091, '2026/04/14', NULL, 'Peshawar', 'Electronics', 'Wireless Mouse', 2, 25.00, 0.00, 50.00, 30.00, 20.00, 'Completed', 'Card', 'New', 3, 0),
(1092, '2026-04-15', 'CUST_192', 'Lahore', 'Home', 'Coffee Maker', 1, 120.00, 0.20, 96.00, 90.00, 6.00, 'Completed', 'COD', 'Returning', 4, 0),
(1093, '16/04/2026', 'CUST_193', 'Islamabad', 'Apparel', 'Denim Jeans', 2, 60.00, 0.50, 60.00, 70.00, -10.00, 'Completed', 'Card', 'Premium', 10, 1),
(1094, '2026-04-17', 'CUST_194', 'Karachi', 'Fitness', 'Dumbbells', 1, 50.00, 0.10, 45.00, 35.00, 10.00, 'Returned', 'COD', 'New', 6, 1),
(1095, '2026/04/18', 'CUST_195', 'Multan', 'Beauty', 'Skincare Set', 1, 55.00, 0.00, 55.00, 40.00, 15.00, 'Completed', 'Bank', 'Returning', 2, 0),
(1096, '2026-04-19', NULL, 'Faisalabad', 'Electronics', 'Smart Watch', 2, 150.00, 0.35, 195.00, 220.00, -25.00, 'Completed', 'Card', 'New', 7, 1),
(1097, '20/04/2026', 'CUST_197', 'Lahore', 'Home', 'Blender', 1, 75.00, 0.20, 60.00, 55.00, 5.00, 'Completed', 'COD', 'Returning', 4, 0),
(1098, '2026-04-21', 'CUST_198', 'Islamabad', 'Apparel', 'Cotton T-Shirt', 3, 20.00, 0.00, 60.00, 37.50, 22.50, 'Completed', 'Card', 'Premium', 3, 0),
(1099, '2026/04/22', 'CUST_199', 'Karachi', 'Fitness', 'Yoga Mat', 1, 30.00, 0.40, 18.00, 20.00, -2.00, 'Completed', 'Bank', 'New', 8, 1),
(1100, '2026-04-23', NULL, 'Peshawar', 'Beauty', 'Hair Dryer', 2, 40.00, 0.15, 68.00, 70.00, -2.00, 'Completed', 'COD', 'Returning', 5, 0),
(1101, '24/04/2026', 'CUST_201', 'Lahore', 'Electronics', 'Bluetooth Speaker', 1, 45.00, 0.00, 45.00, 38.00, 7.00, 'Completed', 'Card', 'Returning', 3, 0),
(1102, '2026-04-25', 'CUST_202', 'Karachi', 'Home', 'Air Fryer', 1, 90.00, 0.30, 63.00, 75.00, -12.00, 'Completed', 'COD', 'New', 6, 1),
(1103, '2026/04/26', 'CUST_203', 'Islamabad', 'Fitness', 'Resistance Bands', 3, 15.00, 0.10, 40.50, 27.00, 13.50, 'Completed', 'Bank', 'Premium', 4, 0),
(1104, '2026-04-27', NULL, 'Faisalabad', 'Apparel', 'Hoodie', 1, 50.00, 0.50, 25.00, 42.00, -17.00, 'Completed', 'Card', 'Returning', 9, 1),
(1105, '28/04/2026', 'CUST_205', 'Multan', 'Beauty', 'Face Serum', 2, 35.00, 0.20, 56.00, 60.00, -4.00, 'Completed', 'COD', 'New', 5, 1),
(1106, '2026-04-29', 'CUST_206', 'Lahore', 'Electronics', 'USB-C Hub', 1, 35.00, 0.00, 35.00, 22.00, 13.00, 'Completed', 'Card', 'Returning', 2, 0),
(1107, '2026/04/30', 'CUST_207', 'Karachi', 'Home', 'Desk Lamp', 2, 30.00, 0.25, 45.00, 40.00, 5.00, 'Returned', 'COD', 'New', 7, 1),
(1108, '2026-05-01', 'CUST_208', 'Islamabad', 'Fitness', 'Water Bottle', 1, 20.00, 0.00, 20.00, 13.00, 7.00, 'Completed', 'Bank', 'Premium', 3, 0),
(1109, '02/05/2026', NULL, 'Peshawar', 'Beauty', 'Makeup Brush Kit', 1, 25.00, 0.10, 22.50, 18.00, 4.50, 'Completed', 'Card', 'Returning', 4, 0),
(1110, '2026-05-03', 'CUST_210', 'Lahore', 'Apparel', 'Running Shoes', 2, 80.00, 0.35, 104.00, 100.00, 4.00, 'Completed', 'COD', 'New', 6, 0),
(1111, '2026/05/04', 'CUST_211', 'Karachi', 'Electronics', 'Wireless Mouse', 4, 25.00, 0.50, 50.00, 60.00, -10.00, 'Completed', 'Card', 'Premium', 9, 1),
(1112, '2026-05-05', 'CUST_212', 'Faisalabad', 'Home', 'Coffee Maker', 1, 120.00, 0.00, 120.00, 90.00, 30.00, 'Completed', 'Bank', 'Returning', 2, 0),
(1113, '06/05/2026', NULL, 'Multan', 'Apparel', 'Denim Jeans', 1, 60.00, 0.15, 51.00, 35.00, 16.00, 'Completed', 'COD', 'New', 5, 0),
(1114, '2026-05-07', 'CUST_214', 'Islamabad', 'Fitness', 'Dumbbells', 2, 50.00, 0.20, 80.00, 70.00, 10.00, 'Completed', 'Card', 'Returning', 4, 0),
(1115, '2026/05/08', 'CUST_215', 'Lahore', 'Beauty', 'Skincare Set', 1, 55.00, 0.40, 33.00, 40.00, -7.00, 'Completed', 'COD', 'Premium', 8, 1),
(1116, '2026-05-09', 'CUST_216', 'Karachi', 'Electronics', 'Smart Watch', 1, 150.00, 0.10, 135.00, 110.00, 25.00, 'Completed', 'Card', 'New', 3, 0),
(1117, '10/05/2026', NULL, 'Peshawar', 'Home', 'Blender', 2, 75.00, 0.30, 105.00, 110.00, -5.00, 'Returned', 'COD', 'Returning', 7, 1),
(1118, '2026-05-11', 'CUST_218', 'Islamabad', 'Apparel', 'Cotton T-Shirt', 2, 20.00, 0.00, 40.00, 25.00, 15.00, 'Completed', 'Bank', 'Returning', 3, 0),
(1119, '2026/05/12', 'CUST_219', 'Lahore', 'Fitness', 'Yoga Mat', 3, 30.00, 0.25, 67.50, 60.00, 7.50, 'Completed', 'Card', 'New', 5, 0),
(1120, '2026-05-13', 'CUST_220', 'Karachi', 'Beauty', 'Hair Dryer', 1, 40.00, 0.45, 22.00, 35.00, -13.00, 'Completed', 'COD', 'Premium', 9, 1),
(1121, '14/05/2026', NULL, 'Multan', 'Electronics', 'Bluetooth Speaker', 1, 45.00, 0.00, 45.00, 38.00, 7.00, 'Completed', 'Card', 'Returning', 2, 0),
(1122, '2026-05-15', 'CUST_222', 'Faisalabad', 'Home', 'Air Fryer', 1, 90.00, 0.20, 72.00, 75.00, -3.00, 'Completed', 'COD', 'New', 6, 1),
(1123, '2026/05/16', 'CUST_223', 'Lahore', 'Fitness', 'Resistance Bands', 2, 15.00, 0.00, 30.00, 18.00, 12.00, 'Completed', 'Bank', 'Returning', 3, 0),
(1124, '2026-05-17', 'CUST_224', 'Islamabad', 'Apparel', 'Hoodie', 1, 50.00, 0.30, 35.00, 42.00, -7.00, 'Completed', 'Card', 'Premium', 7, 1),
(1125, '18/05/2026', 'CUST_225', 'Karachi', 'Beauty', 'Face Serum', 2, 35.00, 0.10, 63.00, 60.00, 3.00, 'Completed', 'COD', 'New', 4, 0),
(1126, '2026-05-19', NULL, 'Peshawar', 'Electronics', 'USB-C Hub', 3, 35.00, 0.40, 63.00, 66.00, -3.00, 'Completed', 'Card', 'Returning', 8, 1),
(1127, '2026/05/20', 'CUST_227', 'Lahore', 'Home', 'Desk Lamp', 1, 30.00, 0.00, 30.00, 18.00, 12.00, 'Completed', 'COD', 'New', 2, 0),
(1128, '2026-05-21', 'CUST_228', 'Islamabad', 'Fitness', 'Water Bottle', 2, 20.00, 0.05, 38.00, 26.00, 12.00, 'Completed', 'Bank', 'Returning', 3, 0),
(1129, '22/05/2026', 'CUST_229', 'Karachi', 'Beauty', 'Makeup Brush Kit', 1, 25.00, 0.20, 20.00, 18.00, 2.00, 'Completed', 'Card', 'Premium', 5, 0),
(1130, '2026-05-23', 'CUST_230', 'Multan', 'Apparel', 'Running Shoes', 1, 80.00, 0.50, 40.00, 50.00, -10.00, 'Completed', 'COD', 'New', 10, 1),
(1131, '2026/05/24', NULL, 'Faisalabad', 'Electronics', 'Wireless Mouse', 2, 25.00, 0.00, 50.00, 30.00, 20.00, 'Completed', 'Card', 'Returning', 3, 0),
(1132, '2026-05-25', 'CUST_232', 'Lahore', 'Home', 'Coffee Maker', 1, 120.00, 0.35, 78.00, 90.00, -12.00, 'Completed', 'COD', 'Premium', 7, 1),
(1133, '26/05/2026', 'CUST_233', 'Islamabad', 'Apparel', 'Denim Jeans', 2, 60.00, 0.10, 108.00, 70.00, 38.00, 'Completed', 'Bank', 'Returning', 4, 0),
(1134, '2026-05-27', 'CUST_234', 'Karachi', 'Fitness', 'Dumbbells', 1, 50.00, 0.00, 50.00, 35.00, 15.00, 'Returned', 'Card', 'New', 6, 1),
(1135, '2026/05/28', 'CUST_235', 'Peshawar', 'Beauty', 'Skincare Set', 2, 55.00, 0.25, 82.50, 80.00, 2.50, 'Completed', 'COD', 'Returning', 5, 0),
(1136, '2026-05-29', NULL, 'Lahore', 'Electronics', 'Smart Watch', 1, 150.00, 0.50, 75.00, 110.00, -35.00, 'Completed', 'Card', 'Premium', 10, 1),
(1137, '30/05/2026', 'CUST_237', 'Islamabad', 'Home', 'Blender', 1, 75.00, 0.15, 63.75, 55.00, 8.75, 'Completed', 'COD', 'New', 4, 0),
(1138, '2026-05-31', 'CUST_238', 'Karachi', 'Apparel', 'Cotton T-Shirt', 4, 20.00, 0.30, 56.00, 50.00, 6.00, 'Completed', 'Bank', 'Returning', 6, 1),
(1139, '2026/06/01', 'CUST_239', 'Multan', 'Fitness', 'Yoga Mat', 1, 30.00, 0.00, 30.00, 20.00, 10.00, 'Completed', 'Card', 'New', 2, 0),
(1140, '2026-06-02', 'CUST_240', 'Faisalabad', 'Beauty', 'Hair Dryer', 1, 40.00, 0.40, 24.00, 35.00, -11.00, 'Completed', 'COD', 'Returning', 8, 1),
(1141, '03/06/2026', NULL, 'Lahore', 'Electronics', 'Bluetooth Speaker', 2, 45.00, 0.20, 72.00, 76.00, -4.00, 'Completed', 'Card', 'Premium', 6, 1),
(1142, '2026-06-04', 'CUST_242', 'Islamabad', 'Home', 'Air Fryer', 1, 90.00, 0.00, 90.00, 75.00, 15.00, 'Completed', 'Bank', 'Returning', 3, 0),
(1143, '2026/06/05', 'CUST_243', 'Karachi', 'Fitness', 'Resistance Bands', 1, 15.00, 0.10, 13.50, 9.00, 4.50, 'Completed', 'COD', 'New', 3, 0),
(1144, '2026-06-06', 'CUST_244', 'Peshawar', 'Apparel', 'Hoodie', 2, 50.00, 0.45, 55.00, 84.00, -29.00, 'Completed', 'Card', 'Returning', 9, 1),
(1145, '07/06/2026', 'CUST_245', 'Lahore', 'Beauty', 'Face Serum', 1, 35.00, 0.00, 35.00, 30.00, 5.00, 'Completed', 'COD', 'New', 2, 0),
(1146, '2026-06-08', NULL, 'Islamabad', 'Electronics', 'USB-C Hub', 2, 35.00, 0.25, 52.50, 44.00, 8.50, 'Returned', 'Card', 'Returning', 6, 1),
(1147, '2026/06/09', 'CUST_247', 'Karachi', 'Home', 'Desk Lamp', 1, 30.00, 0.10, 27.00, 18.00, 9.00, 'Completed', 'Bank', 'New', 4, 0),
(1148, '2026-06-10', 'CUST_248', 'Multan', 'Fitness', 'Water Bottle', 3, 20.00, 0.00, 60.00, 39.00, 21.00, 'Completed', 'COD', 'Returning', 3, 0),
(1149, '11/06/2026', 'CUST_249', 'Faisalabad', 'Beauty', 'Makeup Brush Kit', 1, 25.00, 0.30, 17.50, 18.00, -0.50, 'Completed', 'Card', 'Premium', 7, 1),
(1150, '2026-06-12', 'CUST_250', 'Lahore', 'Apparel', 'Running Shoes', 2, 80.00, 0.40, 96.00, 100.00, -4.00, 'Completed', 'COD', 'New', 8, 1);

-- step-3 data understanding
select * from ecommerce_sales_raw;
-- total orders result is 151
select count(*) as total_row from ecommerce_sales_raw;
describe ecommerce_sales_raw;
-- unique order =150 so 1 is duplicated 
select count(distinct Order_ID ) as uniques_orders from ecommerce_sales_raw;
-- data period like start and end date 
select min(Order_Date) as first_date,max(Order_Date) as last_date from ecommerce_sales_raw;
-- orders status how much is cancelled,completed or returned 
select Order_Status,count(*) as total_orders from ecommerce_sales_raw group by Order_Status;
-- now check the missing customer_id
select count(*) as missing_customers_ids from ecommerce_sales_raw where Customer_ID is null;

-- step-4 data cleaning
-- put unique data in new table 
create table ecommerce_clean as select distinct * from ecommerce_sales_raw;
select count(*) as clean_rows from ecommerce_clean;

select count(*) as missing_customers_ids from ecommerce_clean where Customer_ID is null;
select * from ecommerce_clean where Customer_ID is null;
-- set unknown where Customer_id is null
update ecommerce_clean set Customer_ID='Unknown' where Customer_ID is null;
-- now clean date 
ALTER TABLE ecommerce_clean
ADD COLUMN Order_Date_Clean DATE;
UPDATE ecommerce_clean
SET Order_Date_Clean =
CASE
    WHEN Order_Date REGEXP '^[0-9]{4}-[0-9]{2}-[0-9]{2}$'
        THEN STR_TO_DATE(Order_Date, '%Y-%m-%d')

    WHEN Order_Date REGEXP '^[0-9]{4}/[0-9]{2}/[0-9]{2}$'
        THEN STR_TO_DATE(Order_Date, '%Y/%m/%d')

    WHEN Order_Date REGEXP '^[0-9]{2}/[0-9]{2}/[0-9]{4}$'
        THEN STR_TO_DATE(Order_Date, '%d/%m/%Y')

    ELSE NULL
END;

select Order_Date,Order_Date_Clean from ecommerce_clean;
SELECT Order_Date, Order_Date_Clean
FROM ecommerce_clean
WHERE Order_Date IS NULL
   OR Order_Date_Clean IS NULL;
-- check category
SELECT Category, COUNT(*) AS total
FROM ecommerce_clean
GROUP BY Category;
-- now check negative profit
SELECT COUNT(*) AS negative_profit_orders
FROM ecommerce_clean
WHERE Profit < 0;

SELECT COUNT(*) AS invalid_quantity
FROM ecommerce_clean
WHERE Quantity <= 0;
-- check profit sahi calculated hai hai ya nai 
SELECT COUNT(*) AS profit_mismatch
FROM ecommerce_clean
WHERE Profit <> (Sales - Cost);
-- check discount 
SELECT COUNT(*) AS invalid_discount
FROM ecommerce_clean
WHERE Discount < 0
   OR Discount > 1;

-- step-5 business-question 
-- profit is decresing why????
-- now check the monthly sales,cost,profit and profit margin 
SELECT 
    MONTH(Order_Date_Clean) AS month,
    SUM(Sales) AS total_sales,
    SUM(Cost) AS total_cost,
    SUM(Profit) AS total_profit,
    ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS profit_margin
FROM ecommerce_clean
WHERE Order_Status = 'Completed'
GROUP BY MONTH(Order_Date_Clean)
ORDER BY month;
-- kis category mn sales brhi or profit itna km howa 
SELECT
    Category,
    SUM(Sales) AS total_sales,
    SUM(Cost) AS total_cost,
    SUM(Profit) AS total_profit,
    ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS profit_margin
FROM ecommerce_clean
WHERE Order_Status = 'Completed'
  AND MONTH(Order_Date_Clean) = 2
GROUP BY Category
ORDER BY total_profit ASC;

-- home,electronics and beauty mn q negative hai profit
SELECT
    Category,
    Product,
    SUM(Sales) AS total_sales,
    SUM(Cost) AS total_cost,
    SUM(Profit) AS total_profit,
    ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS profit_margin
FROM ecommerce_clean
WHERE Order_Status = 'Completed'
  AND MONTH(Order_Date_Clean) = 2
  AND Category IN ('Home', 'Electronics')
GROUP BY Category, Product
ORDER BY total_profit ASC;

SELECT
    Category,
    Product,
    SUM(Sales) AS total_sales,
    SUM(Cost) AS total_cost,
    SUM(Discount) AS total_discount,
    SUM(Profit) AS total_profit
FROM ecommerce_clean
WHERE Order_Status = 'Completed'
  AND MONTH(Order_Date_Clean) = 2
  AND Product IN ('Coffee Maker', 'Smart Watch', 'Bluetooth Speaker')
GROUP BY Category, Product
ORDER BY total_profit ASC;

SELECT
    MONTH(Order_Date_Clean) AS month,
    ROUND(AVG(Discount) * 100, 2) AS avg_discount_percent,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM ecommerce_clean
WHERE Order_Status = 'Completed'
GROUP BY MONTH(Order_Date_Clean)
ORDER BY month;


SELECT
    City,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit,
    ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS profit_margin
FROM ecommerce_clean
WHERE Order_Status = 'Completed'
  AND MONTH(Order_Date_Clean) = 2
GROUP BY City
ORDER BY total_profit ASC;

SELECT
    City,
    Product,
    SUM(Sales) AS total_sales,
    SUM(Cost) AS total_cost,
    SUM(Profit) AS total_profit,
    ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS profit_margin
FROM ecommerce_clean
WHERE Order_Status = 'Completed'
  AND MONTH(Order_Date_Clean) = 2
  AND City = 'Karachi'
GROUP BY City, Product
ORDER BY total_profit ASC;


SELECT
    Product,
    SUM(Sales) AS total_sales,
    SUM(Cost) AS total_cost,
    SUM(Discount) AS total_discount,
    SUM(Profit) AS total_profit
FROM ecommerce_clean
WHERE Order_Status = 'Completed'
  AND MONTH(Order_Date_Clean) = 2
  AND City = 'Karachi'
  AND Product IN ('Smart Watch', 'Bluetooth Speaker', 'Hair Dryer')
GROUP BY Product
ORDER BY total_profit ASC;


SELECT
    Order_Status,
    COUNT(*) AS total_orders,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit
FROM ecommerce_clean
GROUP BY Order_Status
ORDER BY total_profit ASC;


SELECT
    Product,
    COUNT(*) AS total_orders,
    SUM(Quantity) AS total_quantity,
    ROUND(AVG(Discount) * 100, 2) AS avg_discount_percent,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit
FROM ecommerce_clean
WHERE Order_Status = 'Completed'
  AND MONTH(Order_Date_Clean) = 2
  AND Product IN ('Coffee Maker', 'Smart Watch', 'Bluetooth Speaker')
GROUP BY Product
ORDER BY total_profit ASC;


SELECT
    CASE
        WHEN Discount = 0 THEN '0%'
        WHEN Discount <= 0.10 THEN '1-10%'
        WHEN Discount <= 0.25 THEN '11-25%'
        WHEN Discount <= 0.50 THEN '26-50%'
        ELSE 'Above 50%'
    END AS discount_range,
    COUNT(*) AS total_orders,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit,
    ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS profit_margin
FROM ecommerce_clean
WHERE Order_Status = 'Completed'
GROUP BY discount_range
ORDER BY total_profit;


SELECT
    Category,
    COUNT(*) AS total_orders,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit,
    ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS profit_margin
FROM ecommerce_clean
WHERE Order_Status = 'Completed'
  AND Discount > 0.25
  AND Discount <= 0.50
GROUP BY Category
ORDER BY total_profit ASC;



SELECT
    Product,
    Category,
    COUNT(*) AS total_orders,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit,
    ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS profit_margin
FROM ecommerce_clean
WHERE Order_Status = 'Completed'
GROUP BY Product, Category
ORDER BY total_profit ASC
LIMIT 10;


SELECT
    Product,
    Category,
    COUNT(*) AS total_orders,
    ROUND(AVG(Discount) * 100, 2) AS avg_discount_percent,
    ROUND(AVG(Unit_Price), 2) AS avg_unit_price,
    ROUND(AVG(Cost), 2) AS avg_cost,
    ROUND(AVG(Profit), 2) AS avg_profit
FROM ecommerce_clean
WHERE Order_Status = 'Completed'
  AND Product IN (
      'Coffee Maker',
      'Smart Watch',
      'Hoodie',
      'Hair Dryer',
      'Air Fryer'
  )
GROUP BY Product, Category
ORDER BY avg_profit ASC;


SELECT
    COUNT(*) AS sales_mismatch
FROM ecommerce_clean
WHERE ABS(
    Sales - (Quantity * Unit_Price * (1 - Discount))
) > 0.01;