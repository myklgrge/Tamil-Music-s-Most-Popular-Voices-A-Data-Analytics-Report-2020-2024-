-- SORTING TOP 50 BASED ON POPULARITY

SELECT *
FROM tamil_hits_2020

ORDER BY Popularity desc
LIMIT 50;


SELECT *
FROM tamil_hits_2021
ORDER BY Popularity desc
LIMIT 50;

SELECT *
FROM tamil_hits_2022
ORDER BY Popularity desc
LIMIT 50;

SELECT *
FROM tamil_hits_2023
ORDER BY Popularity desc
LIMIT 50;



SELECT *
FROM tamil_hits_2024
ORDER BY Popularity desc
LIMIT 50;

-- NOW EXPORT TO PYTHON FOR SPLITTING ARTISTS AND GENRES 

-- Using ChatGPT and Python to get singer_names to genders and also to clean data with gender type

-- used excel to add some missing gender type from a basic websearch

SELECt *
FROM top_50_2024_cleaned
;

-- creating a new combined table for all years songs

CREATE TABLE all_songs (
    track_name VARCHAR(255),
    popularity INT,
    singer_gender_type VARCHAR(20),
    `year` INT
);

INSERT INTO all_songs (track_name, popularity, singer_gender_type, `year`)
SELECT track_name, popularity, singer_gender_type, `year` FROM top_50_2020_cleaned
UNION ALL
SELECT track_name, popularity, singer_gender_type, `year` FROM top_50_2021_cleaned
UNION ALL
SELECT track_name, popularity, singer_gender_type, `year` FROM top_50_2022_cleaned
UNION ALL
SELECT track_name, popularity, singer_gender_type, `year` FROM top_50_2023_cleaned
UNION ALL
SELECT track_name, popularity, singer_gender_type, `year` FROM top_50_2024_cleaned;


SELECT *
FROM all_songs
;

-- dropping old unwanted tables
-- done


SELECT *
FROM all_songs
;

-- Starting our main queries

-- 1. Total Song Count by Gender Type per Year

SELECT `year` , singer_gender_type , COUNT(*) as song_count
FROM all_songs
GROUP BY `year` , singer_gender_type
ORDER BY `year`
;

-- 2. Avg Popularity by Gender Type per Year

SELECT `year` , singer_gender_type , AVG(popularity) as song_popularity
FROM all_songs
GROUP BY 
	`year` , singer_gender_type
;

-- 3. Top 5 Most Popular Songs Per Year

SELECT *
FROM (
  SELECT *,
         ROW_NUMBER() OVER (PARTITION BY year ORDER BY popularity DESC) AS ranking
  FROM all_songs
) AS ranked_songs
WHERE ranking <= 5;

-- 4. Overall Gender Distribution (All Years Combined)

SELECT singer_gender_type, COUNT(track_name) AS total_songs , (COUNT(track_name)/ 235)* 100 as percentage
FROM all_songs
GROUP BY singer_gender_type;


-- 5. Which Gender Type Has More High-Popularity Songs (e.g. popularity ≥ 65)?


SELECT singer_gender_type , COUNT(popularity) as highest_popularity
FROM all_songs
WHERE popularity >= 65
GROUP BY singer_gender_type;
 ;

-- These queries will give you answers to our major questions for our project