# Part 2: Q5 Spotify artist analysis ----

# Load packages required for this session into library

library(spotifyr)
library(ggplot2)
library(ggridges)
library(tidyr)


# Set up authentication variables

app_id <- "My Key"
app_secret <- "API secret"
token <- "1"


# Authentication for spotifyr package:

Sys.setenv(SPOTIFY_CLIENT_ID = app_id)
Sys.setenv(SPOTIFY_CLIENT_SECRET = app_secret)
access_token <- get_spotify_access_token()


# Get Spotify data on band "cold play" registered as artist on Spotify

find_my_artist <- search_spotify("Coldplay", type = "artist")
View(find_my_artist)

# Retrieve album data of artist, 
# by taking id from the 
# find_my_artist table with name coldplay, which is = 4gzpq5DPGxSnKTe4SA8HAU

albums <- get_artist_albums("4gzpq5DPGxSnKTe4SA8HAU", 
                            include_groups = c
                            ("album", "single", "appears_on", "compilation"))
View(albums)

# Retrieve the song of the most tracks in a album from the albums table, 
# by setting total_tracks to maximum & then taking the first one value form the id column
# for getting the tracks of that album,
# So the album is Live in Buenos Aires which with 24 songs in it, 
# with the album id as = 19CvkGjYpifkdwgVJSbog2

songs <- get_album_tracks("19CvkGjYpifkdwgVJSbog2")
View(songs)

# Retrieve the first song out of 24 songs from the songs table by clicking track_number & 
# taking first value which is 
# song =A Head Full of Dreams - Live in Buenos AiresSo, 
# with id as = 5H8lr4az4Vo3LloH67yVRt
# after running the code below, we get a song table with a song & its all features.

song <- get_track_audio_features("5H8lr4az4Vo3LloH67yVRt")
View(song)


# Get audio features for 'coldplay'
# it gives all the songs with their all features of coldplay available on Spotify
# So, from table audio_features, we get 212 songs of coldplay with 39 columns including their features


audio_features <- get_artist_audio_features("4gzpq5DPGxSnKTe4SA8HAU") # artist ID for coldplay
View(audio_features)

# to remove any duplicates from the audio_features table
audio_features <- audio_features[!duplicated(audio_features$track_name), ]


# Plot happiness (valence) scores for each album

ggplot(audio_features, aes(x = valence, y = album_name)) +
  geom_density_ridges() +
  theme_ridges() +
  ggtitle("Happiness in Coldplay Albums",
          subtitle = "Based on valence from Spotify's Web API")


# Retrieve information about Coldplay artists collaborated with other artists

related_bm <- get_related_artists("4gzpq5DPGxSnKTe4SA8HAU")
View(related_bm)

# Retrieve album data of artist, 
# by taking id from the 
# find_my_artist table with name coldplay, which is = 4gzpq5DPGxSnKTe4SA8HAU
albums <- get_artist_albums("4gzpq5DPGxSnKTe4SA8HAU", 
                            include_groups = c("album", "single", "appears_on", "compilation"))
View(albums)

# Extract release years from the albums data
album_years <- as.numeric(format(as.Date(albums$release_date), "%Y"))

# Calculate the number of years active on Spotify
years_active <- max(album_years) - min(album_years) + 1

# Print the result
print(paste("Coldplay has been active on Spotify for", years_active, "years."))

# Create a network of artists related to Band Coldplay

edges <- c()
for (artist in related_bm$id){
  related <- get_related_artists(artist)
  artist_name <- get_artist(artist)$name
  for (relatedartist in related$name){
    edges <- append(edges, artist_name)
    edges <- append(edges, relatedartist)
  }
}
edges[1:10]


# Convert network to graph and save as external file

related_artists_graph <- graph(edges)

plot(related_artists_graph, vertex.label = "", vertex.size = 4, edge.arrow.size = 0.5)
write_graph(related_artists_graph, file = "RelatedArtists.graphml", format = "graphml")

# Install required packages
install.packages(c("DT", "htmlwidgets", "shinydashboard", "shinyjs", "visNetwork"))
