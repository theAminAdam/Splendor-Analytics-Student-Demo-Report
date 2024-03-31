--CREATE DATABASE [splendemics student data]
--ADD TABLE [dbo].[SQL FOR DA]
--USE THE CREATED DATABASE
USE [splendemics student data]

--CHANGE THE DATE TIME DATATYPE STORED AS VARCHAR TO DATETIME FORMAT
UPDATE 
	[dbo].[SQL FOR DA]
SET Start_time = CONVERT(VARCHAR, CAST([Start_time] AS DATETIME), 23);

UPDATE 
	[dbo].[SQL FOR DA]
SET Completion_time = CONVERT(VARCHAR, CAST([Completion_time] AS DATETIME), 23);

--REMOVING NON RELEVANT COLUMN i.e TOPIC OF INTEREST COLUMN

ALTER TABLE [dbo].[SQL FOR DA]
DROP COLUMN [Topic_of_Interest_Optional];


-- UPDATE THE COUNTRY_lOCATION COLUMN TO ENSURE CONSISTENT CAPITALIZATION AND SPELLING

SELECT * 
FROM 
	[dbo].[SQL FOR DA]
WHERE 
	[Country_Location] NOT IN  
	('Nigeria', 'United Kingdom', 'United States', 'kenya', 'Ghana', 'Cameroon', 'South Africa','Kenya', 'Zimbabwe', 'India', 'Tanzania', 'Rwanda','czech republic', 'Peru', 'Uganda', 'Canada', 'Germany', 'Hungary', 'Philippines', 'Gambia',
	'Italy', 'United Arab Emirates', 'Sierra Leone', 'Scotland', 'Namibia', 'Namibia', 'Poland', 'Sweden', 'Burundi', 'Ethiopia', 'France', 'Ireland', 'Egypt', 'Malta', 'Sudan', 'Nepal','Botswana', 'Portugal');

UPDATE [dbo].[SQL FOR DA]
SET Country_Location = 
    CASE 
        WHEN Country_Location LIKE '%nigeria%' THEN 'Nigeria'
        WHEN Country_Location LIKE '%united kingdom%' THEN 'United Kingdom'
		WHEN Country_Location LIKE '%England%' THEN 'United Kingdom'
		WHEN Country_Location LIKE '%Birminham%' THEN 'United Kingdom'
		WHEN Country_Location LIKE '%England%' THEN 'United Kingdom'
		WHEN Country_Location LIKE '%uk%' THEN 'United Kingdom'
		WHEN Country_Location LIKE '%united states%' THEN 'United States'
		WHEN Country_Location LIKE '%USA%' THEN 'United States'
		WHEN Country_Location LIKE '%Ghana%' THEN 'Ghana'
		WHEN Country_Location LIKE '%Port-Harcourt%' THEN 'Nigeria'
		WHEN Country_Location LIKE '%Ile-ife%' THEN 'Nigeria'
		WHEN Country_Location LIKE '%ife%' THEN 'Nigeria'
		WHEN Country_Location LIKE '%Abuja%' THEN 'Nigeria'
		WHEN Country_Location LIKE '%Lagos%' THEN 'Nigeria'
		WHEN Country_Location LIKE '%Osun%' THEN 'Nigeria'
		WHEN Country_Location LIKE '%Osobo%' THEN 'Nigeria'
		WHEN Country_Location LIKE '%Ado ekiti%' THEN 'Nigeria'
		WHEN Country_Location LIKE '%Calabar%' THEN 'Nigeria'
		WHEN Country_Location LIKE '%Akure%' THEN 'Nigeria'
		WHEN Country_Location LIKE '%Alberta Canada%' THEN 'Nigeria'
		WHEN Country_Location LIKE '%Enugu%' THEN 'Nigeria'
		WHEN Country_Location LIKE '%Nigeia%' THEN 'Nigeria'
		WHEN Country_Location LIKE '%Nigeri%' THEN 'Nigeria'
		WHEN Country_Location LIKE '%Kano%' THEN 'Nigeria'
		WHEN Country_Location LIKE '%Awka%' THEN 'Nigeria'
		WHEN Country_Location LIKE '%Olateju%' THEN 'Nigeria'
		WHEN Country_Location LIKE '%Nigerira%' THEN 'Nigeria'
		WHEN Country_Location LIKE '%Nigetia%' THEN 'Nigeria'
		WHEN Country_Location LIKE '%Niagara%' THEN 'Canada'
		WHEN Country_Location LIKE '%Niger state%' THEN 'Nigeria'
		WHEN Country_Location LIKE '%Abia state%' THEN 'Nigeria'
		WHEN Country_Location LIKE '%Owerri%' THEN 'Nigeria'
		WHEN Country_Location LIKE '%Enugu%' THEN 'Nigeria'
		WHEN Country_Location LIKE '%ilorin%' THEN 'Nigeria'
		WHEN Country_Location LIKE '%Alberta Canada%' THEN 'Canada'
		WHEN Country_Location LIKE '%Toronto%' THEN 'Nigeria'
		WHEN Country_Location LIKE '%Hyderabad%' THEN 'India'
		WHEN Country_Location LIKE '%Berlin%' THEN 'Germany'
		WHEN Country_Location LIKE '%Birmingham%' THEN 'United Kingdom'
		WHEN Country_Location LIKE '%Oxford%' THEN 'United Kingdom'
		WHEN Country_Location LIKE '%Workingham%' THEN 'United Kingdom'
		WHEN Country_Location LIKE '%Coimbra%' THEN 'Portugal'
		WHEN Country_Location LIKE '%Kaduna%' THEN 'Nigeria'
		WHEN Country_Location LIKE '%Benin%' THEN 'Nigeria'
		WHEN Country_Location LIKE '%Ile-ife%' THEN 'Nigeria'
		WHEN Country_Location LIKE '%fct%' THEN 'Nigeria'
		WHEN Country_Location LIKE '%rivers%' THEN 'Nigeria'
		WHEN Country_Location LIKE '%uyo%' THEN 'Nigeria'
		WHEN Country_Location LIKE '%maiduguri%' THEN 'Nigeria'
		WHEN Country_Location LIKE '%Delta%' THEN 'Nigeria'
		WHEN Country_Location LIKE '%olaoluwa%' THEN 'Nigeria'
		WHEN Country_Location LIKE '%Akungba%' THEN 'Nigeria'
		WHEN Country_Location LIKE '%Ogbomosho%' THEN 'Nigeria'
		WHEN Country_Location LIKE '%Kwara%' THEN 'Nigeria'
		WHEN Country_Location LIKE '%Aba-Abia state%' THEN 'Nigeria'
		WHEN Country_Location LIKE '%Cross River%' THEN 'Nigeria'
		WHEN Country_Location LIKE '%Abeokuta%' THEN 'Nigeria'
		WHEN Country_Location LIKE '%Ogun%' THEN 'Nigeria'
		WHEN Country_Location LIKE '%klerksdorp%' THEN 'South Africa'
		WHEN Country_Location LIKE '%Nairobi%' THEN 'Kenya'
		WHEN Country_Location LIKE '%india%' THEN 'India'
		WHEN Country_Location LIKE '%indian%' THEN 'India'
		WHEN Country_Location LIKE '%Tanzania%' THEN 'Tanzania'
		WHEN Country_Location LIKE '%Zimbabwe%' THEN 'Zimbabwe'
		WHEN Country_Location LIKE '%Rwanda%' THEN 'Rwanda'
		WHEN Country_Location LIKE '%czech republic%' THEN 'czech republic'
		WHEN Country_Location LIKE '%Lima%' THEN 'Peru'
		WHEN Country_Location LIKE '%BOTSWANA%' THEN 'Botswana'
		
        ELSE Country_Location
    END;


UPDATE [dbo].[SQL FOR DA]
SET [Occupation_Industry] = 
    CASE 
        WHEN [Occupation_Industry] LIKE '%Nil%' THEN 'Unemployed'
		WHEN [Occupation_Industry] LIKE '%Nill%' THEN 'Unemployed'
		WHEN [Occupation_Industry] LIKE 'None%' THEN 'Unemployed'
		WHEN [Occupation_Industry] LIKE '%Non%' THEN 'Unemployed'
		WHEN [Occupation_Industry] LIKE '%unemployed%' THEN 'Unemployed'
		WHEN [Occupation_Industry] LIKE 'N/A%' THEN 'Unemployed'
		WHEN [Occupation_Industry] LIKE '%Undergraduate%' THEN 'Unemployed'
		WHEN [Occupation_Industry] LIKE 'no%' THEN 'Unemployed'
		WHEN [Occupation_Industry] LIKE '%Bank%' THEN 'Banking & Finance'
		WHEN [Occupation_Industry] LIKE '%Civil ser%' THEN 'Civil Servant'
		WHEN [Occupation_Industry] LIKE '%Corp%' THEN 'NYSC'
		WHEN [Occupation_Industry] LIKE '%Data An%' THEN 'Data Analyst'
		WHEN [Occupation_Industry] LIKE '%Stu%' THEN 'Student'
		WHEN [Occupation_Industry] LIKE '%Teach%' THEN 'Teacher'
		WHEN [Occupation_Industry] LIKE '%Pham%' THEN 'Pharmaceuticals'
		WHEN [Occupation_Industry] LIKE '%writer%' THEN 'writer'
		WHEN [Occupation_Industry] LIKE '%Telecom%' THEN 'Telecommunications'
		WHEN [Occupation_Industry] LIKE '%Sales%' THEN 'Sales'
		WHEN [Occupation_Industry] LIKE '%account%' THEN 'Accountant'
		WHEN [Occupation_Industry] LIKE '%admin%' THEN 'Administrative officer'
		WHEN [Occupation_Industry] LIKE '%ag%' THEN 'Agricultural Sector'
		WHEN [Occupation_Industry] LIKE '%arch%' THEN 'Architect'
		WHEN [Occupation_Industry] LIKE '%awaiting%' THEN 'Unemployed'
		WHEN [Occupation_Industry] LIKE '%civil eng%' THEN 'Civil Engineer'
		WHEN [Occupation_Industry] LIKE '%Analyst%' THEN 'Data Analyst'
		WHEN [Occupation_Industry] LIKE '%Analytics%' THEN 'Data Analyst'
		WHEN [Occupation_Industry] LIKE '%13th%' THEN 'Insurance Officer'
		WHEN [Occupation_Industry] LIKE '%bus%' THEN 'Business Operations'
		WHEN [Occupation_Industry] LIKE '%Consult%' THEN 'Consultancy Services'
		WHEN [Occupation_Industry] LIKE '%Customer%' THEN 'Customer Care'
		WHEN [Occupation_Industry] LIKE '%Data En%' THEN 'Data Engineer'
		WHEN [Occupation_Industry] LIKE '%Database en%' THEN 'Data Engineer'
		WHEN [Occupation_Industry] LIKE '%Data Analy%' THEN 'Data Analyst'
		WHEN [Occupation_Industry] LIKE '%Data sc%' THEN 'Data Scientist'
		WHEN [Occupation_Industry] LIKE '%Dev%' THEN 'Developer'
		WHEN [Occupation_Industry] LIKE '%Edu%' THEN 'Education'
		WHEN [Occupation_Industry] LIKE '%Elect%' THEN 'Electrical Engineering'
		WHEN [Occupation_Industry] LIKE '%Eng%' THEN 'Engineering'
		WHEN [Occupation_Industry] LIKE '%Ent%' THEN 'Entrepreneur'
		WHEN [Occupation_Industry] LIKE '%self%' THEN 'Entrepreneur'
		WHEN [Occupation_Industry] LIKE '%Fin%' THEN 'Finance'
		WHEN [Occupation_Industry] LIKE '%Free%' THEN 'Freelancer'
		WHEN [Occupation_Industry] LIKE '%Health%' THEN 'Health Care Professional'
		WHEN [Occupation_Industry] LIKE '%it%' THEN 'Infomation Technology'
		WHEN [Occupation_Industry] LIKE '%Logi%' THEN 'Logistics Officer'
		--i got tired of cleaning this data

		ELSE [Occupation_Industry]
    END;

UPDATE [dbo].[SQL FOR DA]
SET Country_Location = 
    CASE 
        WHEN Country_Location LIKE '%nigeria%' THEN 'Nigeria'
		ELSE [Occupation_Industry]
    END;

--CHECKS 

SELECT DISTINCT 
	[Preferred_SQL_Database]
FROM [dbo].[SQL FOR DA];

SELECT DISTINCT 
	[SQL_Experience_Level]
FROM [dbo].[SQL FOR DA];

SELECT DISTINCT 
	[Country_Location]
FROM [dbo].[SQL FOR DA];

SELECT DISTINCT 
	[Occupation_Industry]
FROM [dbo].[SQL FOR DA];

SELECT DISTINCT 
	[Start_time]
FROM [dbo].[SQL FOR DA];

SELECT DISTINCT 
	[Completion_time]
FROM [dbo].[SQL FOR DA];

--SPLIT COULMN, PREFERRED LEARNING STYLE INTO ITS CONSTITUENT COLUMNS 

SELECT 
    ID,
    Start_time,
    Completion_time,
    Your_name,
    Country_Location,
    Age_Group,
    Occupation_Industry,
    SQL_Experience_Level,
    Preferred_SQL_Database,
    Availability_Days,
    Availability_Time,
    MAX(CASE WHEN value = 'Video tutorials' THEN 1 ELSE 0 END) AS Video_tutorials,
    MAX(CASE WHEN value = 'Hands-on exercises' THEN 1 ELSE 0 END) AS Hands_on_exercises,
    MAX(CASE WHEN value = 'Live demonstrations' THEN 1 ELSE 0 END) AS Live_demonstrations
FROM
    [dbo].[SQL FOR DA]
CROSS APPLY 
    STRING_SPLIT(Preferred_Learning_Style, ';')
GROUP BY
    ID,
    Start_time,
    Completion_time,
    Your_name,
    Country_Location,
    Age_Group,
    Occupation_Industry,
    SQL_Experience_Level,
    Preferred_SQL_Database,
    Availability_Days,
    Availability_Time;

-- ADDING AND UPDATING THE NEW COLUMNS TO FEED FROM PREFERED LEARNING STYLE COLUMN

ALTER TABLE [dbo].[SQL FOR DA]
ADD Video_tutorials INT,
    Hands_on_exercises INT,
    Live_demonstrations INT;

UPDATE [dbo].[SQL FOR DA]
SET 
    Video_tutorials = CASE WHEN Preferred_Learning_Style LIKE '%Video tutorials%' THEN 1 ELSE 0 END,
    Hands_on_exercises = CASE WHEN Preferred_Learning_Style LIKE '%Hands-on exercises%' THEN 1 ELSE 0 END,
    Live_demonstrations = CASE WHEN Preferred_Learning_Style LIKE '%Live demonstrations%' THEN 1 ELSE 0 END;

ALTER TABLE [dbo].[SQL FOR DA]
DROP COLUMN [Preferred_Learning_Style];

ALTER TABLE [dbo].[SQL FOR DA]
ADD Start_Date Date ,
    Completion_Date Date;

UPDATE [dbo].[SQL FOR DA]
SET
    Start_Date = CASE 
		WHEN [Start_time] IS NOT NULL AND ISDATE([Start_time]) = 1 
		THEN CAST([Start_time] AS DATE) ELSE NULL END;

UPDATE [dbo].[SQL FOR DA]
SET
    Completion_Date = CASE 
		WHEN [Completion_time] IS NOT NULL AND ISDATE([Start_time]) = 1 
		THEN CAST([Completion_time] AS DATE) ELSE NULL END;

ALTER TABLE [dbo].[SQL FOR DA]
DROP COLUMN [Start_time], [Completion_time];

--query 1
SELECT 
    Age_Group,
    COUNT(*) AS Number_of_Students
FROM 
    [dbo].[SQL FOR DA]
GROUP BY 
    Age_Group
ORDER BY 
	Number_of_Students DESC;

--query 2
SELECT 
    SQL_Experience_Level,
    COUNT(*) AS Number_of_Students,
    CAST(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER () AS DECIMAL(5, 2)) AS Percentage
FROM 
    [dbo].[SQL FOR DA]
GROUP BY 
    SQL_Experience_Level;

--query 3
SELECT 
    SQL_Experience_Level,
    Preferred_SQL_Database,
    COUNT(*) AS Number_of_Students
FROM 
    [dbo].[SQL FOR DA]
GROUP BY 
    SQL_Experience_Level, Preferred_SQL_Database
ORDER BY 
    Preferred_SQL_Database, COUNT(*) DESC;

--query 4
SELECT 
    Country_Location,
    COUNT(*) AS Number_of_Entries,
    ROUND(CAST(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM [dbo].[SQL FOR DA]) AS DECIMAL(5,2)), 2) AS Percentage
FROM 
    [dbo].[SQL FOR DA]
GROUP BY 
    Country_Location
ORDER BY 
    COUNT(*) DESC;

--query 5


SELECT 
    Availability_Days,
    SUM(CASE WHEN Availability_Time = 'Morning' THEN 1 ELSE 0 END) AS Morning,
    SUM(CASE WHEN Availability_Time = 'Afternoon' THEN 1 ELSE 0 END) AS Afternoon,
    SUM(CASE WHEN Availability_Time = 'Evening' THEN 1 ELSE 0 END) AS Evening
FROM 
    [dbo].[SQL FOR DA]
GROUP BY 
    Availability_Days
ORDER BY 
    Availability_Days;


--query 6
WITH Preferred_Mode_of_Learning AS (
    SELECT 
        SQL_Experience_Level,
        SUM(Video_tutorials) AS Total_Video_Tutorials,
        SUM(Hands_on_exercises) AS Total_Hands_On_Exercises,
        SUM(Live_demonstrations) AS Total_Live_Demonstrations,
        COUNT(*) AS Total_Students
    FROM 
        [dbo].[SQL FOR DA]
    GROUP BY 
        SQL_Experience_Level
)
SELECT 
    SQL_Experience_Level,
    Total_Video_Tutorials,
    Total_Hands_On_Exercises,
    Total_Live_Demonstrations,
    Total_Students
FROM 
    Preferred_Mode_of_Learning
ORDER BY 
    SQL_Experience_Level;

--query 7
SELECT 
    COUNT(*) AS Total_Count_of_Students,
    COUNT(CASE WHEN Occupation_Industry = 'Unemployed' THEN 1 END) AS Total_Unemployed_Students,
    ROUND(CAST(SUM(CASE WHEN Occupation_Industry = 'Unemployed' THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*) * 100, 2) AS Percentage_Unemployed
FROM 
    [dbo].[SQL FOR DA];

--query 8
SELECT
    DATENAME(MONTH, [Start_Date]) + ' ' + CAST(YEAR([Start_Date]) AS VARCHAR(4)) AS Registration__Month,
    COUNT(*) AS Count_of_Records
FROM
    [dbo].[SQL FOR DA]
GROUP BY
    DATENAME(MONTH, [Start_Date]) + ' ' + CAST(YEAR([Start_Date]) AS VARCHAR(4));

--thanks for coming to my ted talk


