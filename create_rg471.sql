-- select the lighting bolt on the left side of the menu to run everything in this script

-- developed by Francis Rinehart
-- all personnel, unit, and other parties included in the database have been alter for security purpose.
-- the facility name and the database name has been changed to rg471 which stands for Range 471.
-- Range 471 is based on one of the training faciltiies in North Carolina; however, the real name is concealed. 
-- this syntax was used to design the database but everything else has been alter for identity protection.

CREATE DATABASE rg471;
use rg471;

CREATE TABLE target (
    target_id INT PRIMARY KEY,
    unit_id INT,
    unit_name VARCHAR(30),
    score_sit INT,
    score_mit INT,
    score_sat INT,
    score_mat INT,
    malfunction VARCHAR(30),
    battery_status VARCHAR(20),
    last_update VARCHAR(20)
) ;

INSERT INTO target VALUES(1, 1, '512th PIR', 52, 20, 8, 5, 'None', 'good','03-21-2023');
INSERT INTO target VALUES(2, 2, '1st SST', 40, 0, 0, 0, 'None', 'weak','03-21-2023');
INSERT INTO target VALUES(3, 3, 'TF Red', 24, 9, 4, 8, 'None', 'good','03-21-2023');
INSERT INTO target VALUES(4, 4, '63 ABD HHC', 80, 0, 0, 0, 'None', 'good','03-21-2023');
INSERT INTO target VALUES(5, 5, '520th PIR', 62, 0, 0, 0, 'None', 'good','03-21-2023');
INSERT INTO target VALUES(6, 6, '4th SWDS', 16, 16, 16, 16, 'mechanical', 'good','03-21-2023');
INSERT INTO target VALUES(7, 7, '13th MPB', 0, 0, 0, 0, 'radio', 'weak','03-21-2023');
INSERT INTO target VALUES(8, 8, '66th MB', 82, 26, 18, 12, 'None', 'good','03-21-2023');
INSERT INTO target VALUES(9, 9, '10th ST', 30, 0, 0, 0, 'None', 'good','03-21-2023');
INSERT INTO target VALUES(10, 10, '580th MI', 50, 6, 10, 4, 'None', 'good','03-21-2023');
INSERT INTO target VALUES(11, 11, 'TF Red', 15, 4, 2, 1, 'None', 'good','03-21-2023');
INSERT INTO target VALUES(12, 12, '30th EOD', 0, 0, 0, 0,'None', 'good','03-21-2023');
INSERT INTO target VALUES(13, 13, 'TF Red', 15, 4, 4, 1, 'None', 'good','03-21-2023');
INSERT INTO target VALUES(14, 14, '1st SST', 32, 0, 0, 0, 'None', 'good','03-21-2023');
INSERT INTO target VALUES(15, 15, 'TF Red', 8, 2, 2, 1, 'None', 'good','03-21-2023');
INSERT INTO target VALUES(16, 16, '1st SST', 24, 8, 0, 0, 'None', 'good','03-21-2023');
INSERT INTO target VALUES(17, 0, 'no schedule', 0, 0, 0, 0, 'None', 'good','03-21-2023');
INSERT INTO target VALUES(18, 0, 'no schedule', 0, 0, 0, 0, 'None', 'good','03-21-2023');
INSERT INTO target VALUES(19, 0, 'no schedule', 0, 0, 0, 0, 'None', 'good','03-21-2023');
INSERT INTO target VALUES(20, 0, 'no schedule', 0, 0, 0, 0, 'None', 'good','03-21-2023');
INSERT INTO target VALUES(21, 0, 'no schedule', 0, 0, 0, 0, 'None', 'good','03-21-2023');
INSERT INTO target VALUES(22, 0, 'no schedule', 0, 0, 0, 0, 'None', 'good','03-21-2023');
INSERT INTO target VALUES(23, 0, 'no schedule', 0, 0, 0, 0, 'radio', 'good','03-21-2023');
INSERT INTO target VALUES(24, 0, 'no schedule', 0, 0, 0, 0, 'None', 'weak','03-21-2023');
INSERT INTO target VALUES(25, 0, 'no schedule', 0, 0, 0, 0, 'None', 'good','03-21-2023');
INSERT INTO target VALUES(26, 0, 'no schedule', 0, 0, 0, 0, 'None', 'good','03-21-2023');
INSERT INTO target VALUES(27, 0, 'no schedule', 0, 0, 0, 0, 'None', 'good','03-21-2023');
INSERT INTO target VALUES(28, 0, 'no schedule', 0, 0, 0, 0, 'None', 'good','03-21-2023');
INSERT INTO target VALUES(29, 0, 'no schedule', 0, 0, 0, 0, 'None', 'good','03-21-2023');
INSERT INTO target VALUES(30, 0, 'no schedule', 0, 0, 0, 0, 'None', 'good','03-21-2023');
INSERT INTO target VALUES(31, 0, 'no schedule', 0, 0, 0, 0, 'None', 'bad','03-21-2023');
INSERT INTO target VALUES(32, 0, 'no schedule', 0, 0, 0, 0, 'None', 'good','03-21-2023');
INSERT INTO target VALUES(33, 0, 'no schedule', 0, 0, 0, 0, 'None', 'good','03-21-2023');
INSERT INTO target VALUES(34, 0, 'no schedule', 0, 0, 0, 0, 'None', 'good','03-21-2023');
INSERT INTO target VALUES(35, 0, 'no schedule', 0, 0, 0, 0, 'None', 'good','03-21-2023');
INSERT INTO target VALUES(36, 0, 'no schedule', 0, 0, 0, 0, 'None', 'good','03-21-2023');
INSERT INTO target VALUES(37, 0, 'no schedule', 0, 0, 0, 0, 'None', 'good','03-21-2023');
INSERT INTO target VALUES(38, 0, 'no schedule', 0, 0, 0, 0, 'None', 'good','03-21-2023');
INSERT INTO target VALUES(39, 0, 'no schedule', 0, 0, 0, 0, 'None', 'good','03-21-2023');
INSERT INTO target VALUES(40, 0, 'no schedule', 0, 0, 0, 0, 'mechanical', 'bad','03-21-2023');

CREATE TABLE unit (
    unit_id INT PRIMARY KEY,
    unit_name VARCHAR(30),
	staff_id INT,
    date_of_training VARCHAR(30),
    training_type VARCHAR(30)
) ;

INSERT INTO unit VALUES(1,'512th PIR', 2, '01-03-2023','convoy');
INSERT INTO unit VALUES(2,'1st SST', 2, '01-05-2023', 'village');
INSERT INTO unit VALUES(3,'TF Red', 1, '01-10-2023','city');
INSERT INTO unit VALUES(4,'63 ABD HHC', 3, '01-10-2023', 'village');
INSERT INTO unit VALUES(5,'520th PIR', 4, '01-16-2023', 'village');
INSERT INTO unit VALUES(6,'4th SWDS', 5, '01-16-2023','city');
INSERT INTO unit VALUES(7,'13th MPB', 5, '01-23-2023','city');
INSERT INTO unit VALUES(8,'66th MB', 1, '02-01-2023','convoy');
INSERT INTO unit VALUES(9,'10th ST', 5, '02-07-2023','village');
INSERT INTO unit VALUES(10,'580th MI', 2, '02-15-2023','convoy');
INSERT INTO unit VALUES(11,'TF Red', 2, '02-20-2023','city, convoy, village');
INSERT INTO unit VALUES(12,'30th EOD', 1, '03-01-2023','city');
INSERT INTO unit VALUES(13,'TF Red', 1, '03-06-2023', 'city, convoy, village');
INSERT INTO unit VALUES(14,'1st SST', 1, '03-20-2023','village');
INSERT INTO unit VALUES(15,'TF Red', 3, '03-15-2023', 'city, convoy, village');
INSERT INTO unit VALUES(16,'1st SST', 1, '03-20-2023','city');

CREATE TABLE inventory (
    inventory_id INT PRIMARY KEY,
    staff_id INT,
    electronics_id VARCHAR(30),
    tools VARCHAR(30),
    equipment VARCHAR(30),
    target_id INT,
    last_update VARCHAR(30)
) ;

INSERT INTO inventory VALUES(1, 3, 'desktop computer', 'radio','generator',1,'3/23/2023');
INSERT INTO inventory VALUES(2, 3, 'laptop','Radio', 'generator', 2, '3/23/2023');
INSERT INTO inventory VALUES(3, 3, 'hand held controller', 'Radio','trailer', 3, '3/23/2023');
INSERT INTO inventory VALUES(4, 1, Null, 'Radio', Null, 4, '3/23/2023');
INSERT INTO inventory VALUES(5, 1, Null, 'radio charger', Null, 5, '3/23/2023');
INSERT INTO inventory VALUES(6, 1, Null, 'radio charger', Null, 6, '3/23/2023');
INSERT INTO inventory VALUES(7, 2, Null, 'drill', Null, 7, '3/23/2023');
INSERT INTO inventory VALUES(8, 2, Null, 'hand tools', Null, 8, '3/23/2023');
INSERT INTO inventory VALUES(9,	2, Null, 'mower', Null, 9, '3/23/2023');
INSERT INTO inventory VALUES(10, 2, Null, 'mower', Null, 10, '3/23/2023');
INSERT INTO inventory VALUES(11, 4, Null, 'weedeater',	Null, 11, '3/23/2023');
INSERT INTO inventory VALUES(12, 4, Null, 'weedeater',	Null, 12, '3/23/2023');
INSERT INTO inventory VALUES(13, 4, Null, 'weedeater',	Null, 13, '3/23/2023');
INSERT INTO inventory VALUES(14, 4, Null, 'weedeater',	Null, 14, '3/23/2023');
INSERT INTO inventory VALUES(15, 1, Null, Null, Null, 15, '3/23/2023');
INSERT INTO inventory VALUES(16, 1, Null, Null, Null, 16, '3/23/2023');
INSERT INTO inventory VALUES(17, 1, Null, Null, Null, 17, '3/23/2023');
INSERT INTO inventory VALUES(18, 1, Null, Null, Null, 18, '3/23/2023');
INSERT INTO inventory VALUES(19, 1, Null, Null, Null, 19, '3/23/2023');
INSERT INTO inventory VALUES(20, 1, Null, Null, Null, 20, '3/23/2023');
INSERT INTO inventory VALUES(21, 1, Null, Null, Null, 21, '3/23/2023');
INSERT INTO inventory VALUES(22, 1, Null, Null, Null, 22, '3/23/2023');
INSERT INTO inventory VALUES(23, 1, Null, Null, Null, 23, '3/23/2023');
INSERT INTO inventory VALUES(24, 1, Null, Null, Null, 24, '3/23/2023');
INSERT INTO inventory VALUES(25, 1, Null, Null, Null, 25, '3/23/2023');
INSERT INTO inventory VALUES(26, 1, Null, Null, Null, 26, '3/23/2023');
INSERT INTO inventory VALUES(27, 1, Null, Null, Null, 27, '3/23/2023');
INSERT INTO inventory VALUES(28, 1, Null, Null, Null, 28, '3/23/2023');
INSERT INTO inventory VALUES(29, 1, Null, Null, Null, 29, '3/23/2023');
INSERT INTO inventory VALUES(30, 1, Null, Null, Null, 30, '3/23/2023');
INSERT INTO inventory VALUES(31, 1, Null, Null, Null, 31, '3/23/2023');
INSERT INTO inventory VALUES(32, 1, Null, Null, Null, 32, '3/23/2023');
INSERT INTO inventory VALUES(33, 1, Null, Null, Null, 33, '3/23/2023');
INSERT INTO inventory VALUES(34, 1, Null, Null, Null, 34, '3/23/2023');
INSERT INTO inventory VALUES(35, 1, Null, Null, Null, 35, '3/23/2023');
INSERT INTO inventory VALUES(36, 1, Null, Null, Null, 36, '3/23/2023');
INSERT INTO inventory VALUES(37, 1, Null, Null, Null, 37, '3/23/2023');
INSERT INTO inventory VALUES(38, 1, Null, Null, Null, 38, '3/23/2023');
INSERT INTO inventory VALUES(39, 1, Null, Null, Null, 39, '3/23/2023');
INSERT INTO inventory VALUES(40, 1, Null, Null, Null, 40,'3/23/2023');

CREATE TABLE staff (
    staff_id INT PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    job_title VARCHAR(30),
    last_update VARCHAR(30)
) ;

INSERT INTO staff VALUES(1, 'Ray', 'Johnson', 'range manager', '03-23-2023');
INSERT INTO staff VALUES(2, 'Thomas', 'Williams', 'faciliator', '03-23-2023');
INSERT INTO staff VALUES(3, 'John', 'Roberson', 'target worker', '03-23-2023');
INSERT INTO staff VALUES(4, 'Alberto', 'Garcia', 'target worker', '03-23-2023');
INSERT INTO staff VALUES(5, 'Elijah', 'Moore', 'target worker', '03-23-2023');
INSERT INTO staff VALUES(6, 'David', 'Jones', 'target worker', '03-23-2023');