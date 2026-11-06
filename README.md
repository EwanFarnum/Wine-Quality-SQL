# Red Wine Quality Analysis Using SQL

## Project Overview

This project uses SQL and SQLite to analyze a dataset of red wine samples and explore how different chemical properties relate to wine quality. The goal is to practice SQL skills like aggregate functions, filtering, grouping, subqueries, and conditional logic while identifying patterns in the data.

The analysis investigates overall wine quality, differences in alcohol content and acidity across quality ratings, and characteristics associated with higher-quality wines.

## Dataset

The dataset comes from the [Red Wine Quality Dataset on Kaggle](https://www.kaggle.com/datasets/uciml/red-wine-quality-cortez-et-al-2009). It contains 1,599 red wine samples, with information about their chemical properties and a quality rating for each sample.

The dataset includes variables such as fixed acidity, volatile acidity, citric acid, residual sugar, chlorides, sulfur dioxide levels, density, pH, sulphates, alcohol content, and quality score.

## Tools Used

**SQLite**

**DB Browser for SQLite**

**SQL**

## Anlysis Questions

What is the overall quality of the wines in the dataset?

Which quality scores are the most common?

How does average alcohol content vary across different quality ratings?

How average pH vary across different quality ratings?

Which wines have high quality ratings and above-average alcohol content?

What characteristics distinguish higher-quality wines from lower-quality wines?

How do chemical properties vary across wine quality scores?

## Methods Used

Aggregate functions: COUNT(), AVG(), MIN(), and MAX()
Grouping and sorting: GROUP BY and ORDER BY
Filtering records: WHERE and AND
Conditional logic: CASE
Roudning: ROUND()
Limiting: LIMIT()

## Findings

**Overall Quality:** The dataset of 1599 wines have a quality score ranging from 3 to 8 with an average score of approximately 5.64

**Most Common Quality Scores:** Quality scores of 5 and 6 make up a majority of the dataset, showing that most wines recieved ratings near the middle of the quality scale. 

**Alcohol Content:** Although causation cannot be determined, there is an observed relationship between higher alcohol content and higher quality scores. When wines were grouped by quality rating, wines rated 8 had the highest average alcohol content at approximately 12.09%. Wines rated 6 and below all had average alcohol content below 11%.

**pH Level:** Wines rated 3 had the highest average pH at 3.398, while wines rated 8 had the lowest average pH at 3.267. Since lower pH indicates greater acidity, higher-rated wines generally had greater acidity.

**High-Quality Wines:** There were 188 wines rated 7 or higher that also had alcohol content above the overall dataset average of approximately 10.42%. These wines had an average pH level of 3.299.

**Chemical Properties by Quality Group:** The comparison between lower-quality wines (ratings 3–5) and higher-quality wines (ratings 6–8) showed differences in their chemical properties. There were 855 wines in the higher-quality group and 744 in the lower-quality group. The higher-quality group had an average alcohol content of 10.86%, compared to 9.93% for the lower-quality group. The lower-quality group also had a higher average volatile acidity of 0.590, compared to 0.474 for the higher-quality group.

**Chemcial Properties by Each Quality Score** Average chemical properties were calculated for each quality score to identify patterns across the ratings. Quality 8 had the highest average alcohol content at 12.09%, with average alcohol content generally decreasing as quality ratings decreased, reaching 9.96% for quality 3. Quality 8 also had the lowest average chloride level at 0.068, which generally increased as quality ratings decreased, reaching 0.123 for quality 3. Average volatile acidity followed a similar pattern, increasing from 0.423 for quality 8 to 0.885 for quality 3. Additionally, average sulphates decreased as quality ratings decreased, from 0.768 for quality 8 to 0.570 for quality 3.

## Conclusion
This project used SQL to explore the relationship between red wine quality ratings and various chemical properties. The analysis showed that higher-rated wines generally had higher alcohol content and sulphate levels, while lower-rated wines tended to have higher volatile acidity and chloride levels. The results also showed differences in pH across quality ratings. Although these patterns suggest that certain chemical properties are associated with wine quality, causation cannot be determined from this dataset. Overall, this project provided practical experience using SQL to clean, filter, group, and analyze data while identifying meaningful patterns in a real world dataset.






