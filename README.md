# 🎵 Spotify Music Data Analysis | PostgreSQL + Power BI

An end-to-end data analysis project that explores Spotify music data using **PostgreSQL** for data analysis and **Power BI** for interactive data visualization.

The project focuses on analyzing songs, artists, popularity, album types, release trends, explicit content, and artist performance.

---

## 📌 Project Overview

The objective of this project is to analyze Spotify music data and uncover meaningful insights about:

- 🎵 Song performance
- 🎤 Artist performance
- 📈 Song popularity
- 💿 Album types
- 📅 Music release trends
- 🔥 Explicit vs Non-Explicit songs
- 🥇 Artists with the most #1 hits
- 👥 Songs featuring multiple artists

The project combines **SQL and Power BI** to demonstrate an end-to-end data analysis workflow.

---

# 🛠️ Tools & Technologies

- **PostgreSQL** – Database management and SQL analysis
- **SQL** – Data querying and aggregation
- **Power BI** – Interactive dashboard and visualization
- **DAX** – Measures and calculations

---

# 📂 Project Files

```text
spotify-music-data-analysis
│
├── 📊 spotify-top-50-world.csv
│   └── Dataset used for analysis
│
├── 🗄️ spotify_music_analysis.sql
│   └── SQL queries for data analysis
│
├── 📈 Spotify_Music_Dashboard.pbix
│   └── Interactive Power BI dashboard
│
├── 📄 Spotify_Music_Dashboard.pdf
│   └── Dashboard preview
│
└── 📖 README.md
```

---

# 📊 Dataset

The dataset contains Spotify music information with the following fields:

| Column | Description |
|--------|-------------|
| `date` | Chart date |
| `position` | Song chart position |
| `song` | Song name |
| `artist` | Artist name |
| `popularity` | Popularity score |
| `duration_ms` | Song duration in milliseconds |
| `album_type` | Type of album |
| `total_tracks` | Number of tracks in the album |
| `release_date` | Song release date |
| `is_explicit` | Explicit content indicator |
| `album_cover_url` | Album cover image URL |

---

# 🗄️ SQL Analysis

The dataset was analyzed using PostgreSQL.

The following questions were explored:

### 1️⃣ Find all unique songs

Used `DISTINCT` to identify unique song names.

### 2️⃣ Find the total number of unique artists

Used:

```sql
COUNT(DISTINCT artist)
```

### 3️⃣ Find the total number of songs for each album type

Analyzed how songs are distributed across different album types.

### 4️⃣ Find the average popularity for each album type

Compared popularity across album categories.

### 5️⃣ Find the Top 10 artists with the highest number of songs

Identified artists with the highest number of unique songs.

### 6️⃣ Find the Top 10 longest songs

Converted song duration from milliseconds into minutes.

### 7️⃣ Compare explicit and non-explicit songs

Analyzed the distribution of explicit and non-explicit music.

### 8️⃣ Find the number of songs released each year

Analyzed music release trends over time.

### 9️⃣ Find the Top 10 songs by total popularity

Identified songs with the highest popularity.

### 🔟 Find artists with more than one song

Used the `HAVING` clause to identify artists with multiple songs.

---

# 📈 Power BI Dashboard

The Power BI dashboard contains **three interactive pages**.

---

## 🏠 Overview Dashboard

The Overview page provides a high-level summary of the Spotify dataset.

### Key KPIs

- Total Songs
- Total Artists
- Average Duration
- Average Popularity

### Visual Analysis

- Songs by Artist
- Top 10 Longest Songs
- Songs by Album Type
- Explicit vs Non-Explicit Songs
- Number of Songs Released by Year
- Average Popularity by Album Type
- Average Popularity by Month
- Distinct Songs by Month

---

## 🎤 Artists Dashboard

The Artists page focuses on artist performance.

### Analysis Includes

- Top 10 Artists by Number of Unique Songs
- Top 10 Artists by Average Popularity
- Artists with the Most #1 Hits
- Artist Performance Analysis

The artist analysis compares multiple metrics such as:

- Number of unique songs
- Number of #1 hits
- Album count
- Average tracks per album
- Average popularity

---

## 🎵 Songs Dashboard

The Songs page focuses on song-level analysis.

### Analysis Includes

- Top Songs with Multiple Artists
- Top 10 Songs by Total Popularity
- Explicit Songs by Album Type
- Song performance analysis

---

# 📐 Key DAX Measures

Several DAX measures were created to perform calculations in Power BI.

### Distinct Songs

```DAX
Distinct Songs =
DISTINCTCOUNT('Top-50-world'[song])
```

Other measures were created for:

- Total Songs
- Distinct Artists
- Average Popularity
- Average Duration
- Total Popularity
- Explicit Songs
- Non-Explicit Songs
- Position #1 Hits
- Maximum Song Duration

---

# 💡 Key Insights

This project helps answer questions such as:

- Which artists have the highest number of unique songs?
- Which artists have the highest average popularity?
- Which artists achieved the most #1 chart positions?
- Which songs have the highest total popularity?
- How does popularity vary across album types?
- How many songs are explicit versus non-explicit?
- How have music releases changed over time?
- Which songs have the longest duration?
- Which songs feature multiple artists?

---

# 🚀 How to Run the Project

## PostgreSQL

1. Create a database named:

```text
spotify_project
```

2. Connect to the database.

3. Create the required table.

4. Import the dataset:

```text
spotify-top-50-world.csv
```

5. Run the queries available in:

```text
https://github.com/ankku-droid/spotify-music-data-analysis/blob/main/spotify_music_analysis.sql.sql
```

---

## Power BI

1. Download the file:

```text
https://github.com/ankku-droid/spotify-music-data-analysis/blob/main/Spotify_Music_Dashboard.pbix.pbix
```

2. Open it using **Power BI Desktop**.

3. Refresh the dataset if required.

4. Explore the interactive dashboard pages:

- 🏠 Overview
- 🎤 Artists
- 🎵 Songs

---

# 📷 Dashboard Preview

The complete dashboard preview is available here:

📄 [View Spotify Music Dashboard (PDF)](./Spotify_Music_Dashboard.pdf)

---

# project_documation 

The project documation is available here:

📄 [View Project Documentation](./Spotify_Project_Documentation.pdf)

---

# 🎯 Skills Demonstrated

This project demonstrates the following data analytics skills:

- SQL Queries
- PostgreSQL
- Data Aggregation
- Data Analysis
- `GROUP BY`
- `HAVING`
- `ORDER BY`
- `LIMIT`
- `DISTINCT`
- `COUNT`
- `AVG`
- `SUM`
- `MAX`
- Date Analysis
- Power BI
- DAX
- Interactive Dashboard Development
- Data Visualization

---

# 👤 Author

**Deepak**

Data Analyst

### Skills

- SQL
- PostgreSQL
- Power BI
- DAX
- Excel
- Python
- Data Analysis
- Data Visualization

---

⭐ If you found this project interesting, feel free to star the repository!
