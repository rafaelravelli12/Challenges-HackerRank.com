-- Coding Challenge
	-- In this MySQL challenge, your query should identify employees who have a higher salary than their manager.
	-- Display each employee's Name, Salary, and ManagerName. If the employee does not have a manager, the ManagerName should be displayed as "No Manager".
	-- The result should be ordered by the difference between the employee's and manager's salaries in descending order.
	-- Additionally, include a column titled PromotionOpportunity that indicates "Yes" if the employee's salary is higher than their manager's and "No" otherwise.

-- Solved with MYQSL
	-- Database Creation
		CREATE TABLE `maintable_TZWKM` (
			`ID` INT,
			`Name` VARCHAR(255),
			`DivisionID` INT,
			`ManagerID` INT,
			`Salary` INT,
			PRIMARY KEY (`ID`)
		) ENGINE=InnoDB CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

	-- Database Populate 
		INSERT INTO `14_confirmation_rate_1` (`ID`, `Name`, `DivisionID`, `ManagerID`, `Salary`)
		VALUES
			(356, 'Daniel Smith', 100, 133, 40000),
			(122, 'Arnold Sully', 101, NULL, 60000),
			(467, 'Lisa Roberts	', 100, NULL, 80000),
			(112, 'Mary Dial', 105, 467, 65000),
			(775, 'Dennis Front', 103, NULL, 90000),
			(111, 'Larry Weis', 104, 35534, 75000),
			(222, 'Mark Red', 102, 133, 86000),
			(222, 'Mark Red', 102, 133, 86000),
			(577, 'Robert Night', 105, 12353, 76000),
			(133, 'Susan Wall', 105, 577, 110000);

	-- Exercise Answer
		SELECT
			t1.`Name`,
			t1.`Salary`,
			COALESCE(t2.`Name`, 'No Manager') AS `ManagerName`,
			CASE WHEN t1.`Salary` > COALESCE(t2.`Salary`, 0) AND t2.`ID` IS NOT NULL THEN 'Yes' ELSE 'No' END AS `PromotionOpportunity`
		from `maintable_TZWKM` t1
		left join `maintable_TZWKM` t2 on t2.`ID` = t1.`ManagerID`
		ORDER by (t1.`Salary` - COALESCE(t2.`Salary`, 0)) DESC;
