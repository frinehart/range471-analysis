/* 
Author: Francis Rinehart
Purpose: Range 471 Analysis
Language: SQL
Last Update: 4/03/2023 at 9:00 AM Eastern time
 */
 
 -- This script contains queries I used to answer my chain of command and key DOD stakeholder questions --

-- access Range 471 database
use rg471;

-- 1. access current staff for the range facility

SELECT 
staff_id,
first_name,
last_name,
job_title
FROM staff;

-- 2. access the current units on schedule for training

SELECT
unit_id,
unit_name,
date_of_training,
training_type
FROM unit;

-- 3. access the number of units using convoy and village lane only

SELECT
unit_name,
training_type
FROM unit
WHERE training_type = 'village' OR training_type = 'convoy';

-- 4. access the number of units using all three: convoy, village, and city lanes

SELECT
unit_name,
training_type
FROM unit
WHERE training_type = 'city, convoy, village';

-- 5. count the amount of good, bad, and weak batteries

-- Good batteries --
SELECT 
COUNT(battery_status)
FROM target
WHERE 
battery_status = 'good';

-- Weak batteries --
SELECT 
COUNT(battery_status)
FROM target
WHERE 
battery_status = 'weak';

-- Bad batteries --
SELECT 
COUNT(battery_status)
FROM target
WHERE 
battery_status = 'bad';

-- 6. who is responsible for what in the inventory?

SELECT
staff.staff_id, 
staff.first_name,
staff.last_name,
inventory.electronics_id,
inventory.tools,
inventory.equipment
FROM inventory
LEFT JOIN staff
ON inventory.staff_id = staff.staff_id;

-- 7. which has the most schedule on the training facility and what type of training?

SELECT 
unit_name, COUNT(unit_name) AS 'Most_Schedule', training_type
FROM unit
GROUP BY unit_name, training_type
HAVING COUNT(unit_name) > 2;

-- 8. which unit has the most target hits and which one has the least based on the type of training?

SELECT * FROM target;
SELECT * FROM unit;
SELECT * FROM unit;

SELECT 
unit.unit_name,
unit.training_type,
target.score_sit,
target.score_mit,
target.score_sat,
target.score_mat, 
target.score_sit + target.score_mit + target.score_sat + target.score_mat AS 'total_score'
FROM target
LEFT JOIN unit
ON unit.unit_id = target.unit_id
WHERE target.score_sit + target.score_mit + target.score_sat + target.score_mat != 'no schedule'
ORDER BY total_score DESC;

-- 9. list any malfunction on the targets

SELECT 
target_id, malfunction
FROM target
WHERE malfunction != 'None';

-- 10. Are there any conflicts in the training schedule?

SELECT 
date_of_training, 
COUNT(date_of_training)
FROM unit
GROUP BY date_of_training
HAVING COUNT(date_of_training) > 1;

SELECT
unit_name,
training_type,
date_of_training
FROM unit
WHERE date_of_training IN ('01-10-2023','01-16-2023','03-20-2023');
