--View the first 10 wines
SELECT *
FROM wine_quality_fixed
LIMIT 10;

-- Count the wines
SELECT COUNT(*) AS total_wines
FROM wine_quality_fixed;

-- Calculate average quality and alcohol
SELECT
    AVG(quality) AS average_quality,
    AVG(alcohol) AS average_alcohol
FROM wine_quality_fixed;

--Overall quality
SELECT
	count(*) As total_wines,
	AVG(quality) As average_quality,
	MIN(quality) As minimum_quality,
	Max(quality) as maximum_quality
From wine_quality_fixed;

-- Most common quality scores
SELECT
	quality,
	count(*) As number_of_wines
FROM wine_quality_fixed
GROUP By quality
ORDER by number_of_wines DESC;

-- Average alcohol content by wine quality
SELECT
	quality,
	AVG(alcohol) as average_alcohol
FROM wine_quality_fixed
GROUP by quality
ORDER by quality DESC;
	
--  Average pH by wine quality
SELECT
	quality,
	AVG(pH)  as average_pH
From wine_quality_fixed
Group by quality
ORDER by quality desc;

--  High quality wines with high alcohol content
SELECT
	quality,
	alcohol,
	pH
From wine_quality_fixed
WHERE quality >= 7
	AND alcohol > (
		Select avg(alcohol)
		FROM wine_quality_fixed
		)
order by quality desc, alcohol desc;

--Compare lower and higher quality wines
SELECT
	CASE
		WHEN quality <= 5 THEN "Lower quality"
		ELSE "Higher quality"
	END AS quality_group,
	COUNT(*) AS number_of_wines,
	ROUND(AVG(alcohol),2) as average_alcohol,
	ROUND(AVG(pH), 2) as average_pH,
	ROUND(AVG(volatile_acidity), 3) as average_volatile_acidity,
	ROUND(AVG(sulphates), 3) as average_sulphates
FROM wine_quality_fixed
GROUP by quality_group;

-- Average chemical properties by quality score
SELECT
	quality,
	ROUND(AVG(alcohol),2) as average_alcohol,
	ROUND(AVG(chlorides), 3) as average_chlorides,
	ROUND(AVG(volatile_acidity), 3) as average_volatile_acidity,
	ROUND(AVG(sulphates), 3) as average_sulphates
FROM wine_quality_fixed
GROUP by quality
ORDER by quality DESC;

-- Top five wines with the highest alcohol content
SELECT
	alcohol,
	quality,
	volatile_acidity,
	sulphates
From wine_quality_fixed
ORDER by alcohol DESC;

