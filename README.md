# 3_social_media_analytics_coldplay
A comprehensive analysis of Coldplay's popularity on social media platforms using YouTube and Spotify data

# Objective
To demonstrate the ability to collect, process, and analyze large datasets using API, Progamming language R & Power BI.
It utilizes social media analytics, sentiment analysis, community detection, and topic modeling to derive insights 
about Coldplay's fan engagement and musical influence.


## Table of Contents
1. [Data Collection and Preparation](#data-collection-and-preparation)
2. [Initial Findings and Exploratory Analysis](#initial-findings-and-exploratory-analysis)
3. [Advanced Analytics](#advanced-analytics)
4. [Dashboard Visualizations](#dashboard-visualizations)
5. [Conclusion and Future Work](#conclusion-and-future-work)

## 1. Data Collection and Preparation
### YouTube Data Collection:
- **Sources:** Comments from Coldplay's popular videos such as "Hymn For The Weekend."
- **Method:** Used YouTube API to extract over 4,000 comments.
- **Preprocessing:** Removed duplicates, cleaned text data, and created a term-document matrix for analysis.

### Spotify Data Collection:
- **Sources:** Data on Coldplay's albums and songs from Spotify API.
- **Method:** Extracted song features and collaboration details.
- **Preprocessing:** Cleaned and structured data for analysis.

- ## 2. Initial Findings and Exploratory Analysis
### Influential Commenters:
- Identified top influencers using the PageRank algorithm.
- Visualized commenter interactions using network graphs.

### Sentiment Analysis:
- Analyzed sentiment from YouTube comments showing predominantly neutral and positive sentiments.

### Spotify Insights:
- Mapped Coldplay's musical evolution and emotional tone of songs.
- Analyzed artist collaborations and song features.
  
## 3. Advanced Analytics
### Community Detection:
- Applied Girvan-Newman and Louvain methods to identify communities within Coldplay's fanbase.
- Visualized communities to highlight Coldplay's central role and influence.

### Topic Modeling:
- Used LDA to uncover significant topics in YouTube comments.
- Identified key themes related to Coldplay's music and fan interactions.

## 4. Dashboard Visualizations
### YouTube Analysis:
- Created dashboards to visualize comment analysis and influential users.

### Spotify Analysis:
- Developed visualizations for artist popularity, followers, and collaborations.

**Tools Used:** PowerBI for creating interactive and insightful dashboards.

## 5. Conclusion and Future Work
### Summary of Findings:
- Highlighted Coldplay's strong fan engagement and the effectiveness of their collaborations.
- Demonstrated the use of data analytics to derive actionable insights.

## Data Visualizations

### 1. Count of Comments by Month and VideoID
![Count of Comments by Month and VideoID](https://github.com/amitgrewal4/3_social_media_analytics_coldplay/assets/140138833/886115af-fbce-46d6-a328-2802a0ba662b)
Shows the count of comments over time for different video IDs.

### 2. Collaborated Artists with Coldplay
![Collaborated Artists with Coldplay](https://github.com/amitgrewal4/3_social_media_analytics_coldplay/assets/140138833/742f82b7-61da-4d98-82a1-de528b7de27b)
Displays the artists who have collaborated with Coldplay, along with the frequency of collaborations.

### 3. Spotify Artist Popularity vs Followers
![Spotify Artist Popularity vs Followers](https://github.com/amitgrewal4/3_social_media_analytics_coldplay/assets/140138833/5ca4c44a-2c94-4054-a599-33a4ccc57b6b)
![Spotify Artist Popularity vs Followers](https://github.com/amitgrewal4/3_social_media_analytics_coldplay/assets/140138833/97fa0b1c-b941-47f8-b520-2f387cab7162)
Compares the popularity of various artists on Spotify against their number of followers.

### 4. Top 6 Topics from YouTube Comments
![Top 6 Topics from YouTube Comments](https://github.com/amitgrewal4/3_social_media_analytics_coldplay/assets/140138833/67aae544-b6fe-481d-8853-7593ddb78211)
Identifies the most discussed topics in YouTube comments.

### 5. Happiness in Coldplay Albums
![Happiness in Coldplay Albums](https://github.com/amitgrewal4/3_social_media_analytics_coldplay/assets/140138833/30714310-01ba-48fa-9a09-9f9a682180ff)
Analyzes the happiness (valence) in Coldplay's albums using data from Spotify.

### 6. Word Frequency in YouTube Comments
![Word Frequency in YouTube Comments](https://github.com/amitgrewal4/3_social_media_analytics_coldplay/assets/140138833/6d335ba6-86d1-48b2-9461-6f1e02287c6c)
Displays the frequency of the most common words in YouTube comments.

### 7. Bigrams in YouTube Comments
![Bigrams in YouTube Comments](https://github.com/amitgrewal4/3_social_media_analytics_coldplay/assets/140138833/4d17bd5f-d19c-4273-a9ad-8eeff3dc5590)
Visualizes the common bigrams in YouTube comments.

### 8. Centrality Measures in YouTube Comments
![Centrality Measures in YouTube Comments](https://github.com/amitgrewal4/3_social_media_analytics_coldplay/assets/140138833/dd142b50-177f-44df-bfe0-b564402aa685)
Shows the centrality measures of users in YouTube comments, highlighting influential users.


### Future Enhancements:
- Incorporate data from additional social media platforms like Twitter and Instagram.
- Use more advanced machine learning models for deeper insights.
- Explore real-time analytics for up-to-date fan engagement monitoring.
