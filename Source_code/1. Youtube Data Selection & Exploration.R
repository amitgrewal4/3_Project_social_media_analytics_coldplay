# Part 2.1 Q2 to Q4 Youtube Data Selection & Exploration
# Q2: YouTube User Analysis ----

# Load packages required for this session into library

library(vosonSML)
library(igraph)


# Set up YouTube authentication variables

my_api_key <- "my API key"


# Authenticate to YouTube and collect data for band=Coldplay with most popular video

yt_auth <- Authenticate("youtube", apiKey = my_api_key)

video_url <- c("https://www.youtube.com/watch?v=YykjpeuMNEk") 
#most popular video link

yt_data <- yt_auth |> Collect(videoIDs = video_url,
                              maxComments = 3500,
                              writeToFile = TRUE,
                              verbose = TRUE) # use 'verbose' to show download progress


# View collected YouTube data

View(yt_data)
write.csv(yt_data_comments, file = "Q2.yt_data_comments_file1.csv", row.names = FALSE)

authors <- yt_data$AuthorDisplayName
authors[1:10]

authors[duplicated(authors)]
table(authors[duplicated(authors)])

# extract the yt_data table
write.csv(yt_data, file = "Q2.yt_data_file2.csv", row.names = FALSE)


# Q3 Create actor network and graph from the data

yt_actor_network <- yt_data |> Create("actor")
yt_actor_graph <- yt_actor_network |> Graph()

plot(yt_actor_graph, vertex.label = "", vertex.size = 4, edge.arrow.size = 0.5)


# Write graph to file
# Make sure to set your working directory to where you want to save the file
# before you execute the next line

write_graph(yt_actor_graph, file = "YouTubeActor.graphml", format = "graphml")


# Run Page Rank algorithm to find important users

rank_yt_actor <- sort(page_rank(yt_actor_graph)$vector, decreasing=TRUE)
rank_yt_actor[1:6]


# Overwrite the 'name' attribute in your graph with the 'screen name' attribute
# to replace YouTube IDs with more meaningful names,
# then run the Page Rank algorithm again

V(yt_actor_graph)$name <- V(yt_actor_graph)$screen_name

rank_yt_actor <- sort(page_rank(yt_actor_graph)$vector, decreasing = TRUE)
write.csv(unique_authors, file = "Q2.rank_yt_actor.csv", row.names = FALSE)
rank_yt_actor[1:6] # <NA> because this is the original video


# Are the top page rank users also the ones who commented the most?
# No, the top page rank users are not necessarily the ones who commented the most.
# From the output, we can say 
# @bapimajumder5665: Commented 30 times but also has a lower page rank 
# compared to @ruislxx.

table(authors[duplicated(authors)])

# Q4 Calculate the number of unique authors
unique_authors <- length(unique(yt_data$AuthorDisplayName))

# Print the result
print(paste("Number of unique authors:", unique_authors))
write.csv(unique_authors, file = "Q2.unique_authors.csv", row.names = FALSE)