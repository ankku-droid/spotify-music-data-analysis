-- Spotify Music Data Analysis Project

-- Create Database

CREATE DATABASE spotify_project;

-- Create Table

CREATE TABLE spotify_data (
    date DATE,
    position INT,
    song VARCHAR(255),
    artist VARCHAR(255),
    popularity INT,
    duration_ms INT,
    album_type VARCHAR(50),
    total_tracks INT,
    release_date DATE,
    is_explicit BOOLEAN,
    album_cover_url TEXT
);


-- Check all data

SELECT *
FROM spotify_data;


-- 1. Find all unique songs:

SELECT DISTINCT song
FROM spotify_data;


-- 2. Find the total number of unique artists:

SELECT 
    COUNT(DISTINCT artist) AS total_artists
FROM spotify_data;


-- 3. Find the total number of songs for each album type:

SELECT 
    album_type,
    COUNT(DISTINCT song) AS total_songs
FROM spotify_data
GROUP BY album_type;


-- 4. Find the average popularity for each album type:

SELECT 
    album_type,
    AVG(popularity) AS avg_popularity
FROM spotify_data
GROUP BY album_type;


-- 5. Find the top 10 artists with the highest number of songs:

SELECT 
    artist,
    COUNT(DISTINCT song) AS total_songs
FROM spotify_data
GROUP BY artist
ORDER BY total_songs DESC
LIMIT 10;


-- 6. Find the top 10 longest songs:

SELECT 
    song,
    ROUND(MAX(duration_ms) / 60000.0, 2) AS duration_minutes
FROM spotify_data
GROUP BY song
ORDER BY duration_minutes DESC
LIMIT 10;


-- 7. Find the number of explicit and non-explicit songs:

SELECT 
    is_explicit,
    COUNT(DISTINCT song) AS total_songs
FROM spotify_data
GROUP BY is_explicit;


-- 8. Find the number of songs released each year:

SELECT 
    EXTRACT(YEAR FROM release_date) AS release_year,
    COUNT(DISTINCT song) AS total_songs
FROM spotify_data
GROUP BY release_year
ORDER BY release_year;


-- 9. Find the top 10 songs by total popularity:

SELECT 
    song,
    SUM(popularity) AS total_popularity
FROM spotify_data
GROUP BY song
ORDER BY total_popularity DESC
LIMIT 10;


-- 10. Find artists with more than one song:

SELECT 
    artist,
    COUNT(DISTINCT song) AS total_songs
FROM spotify_data
GROUP BY artist
HAVING COUNT(DISTINCT song) > 1
ORDER BY total_songs DESC;


-- End of Project