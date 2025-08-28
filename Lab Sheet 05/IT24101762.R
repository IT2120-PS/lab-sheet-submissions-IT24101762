setwd("C:/Users/it24101762/Desktop/IT24101762")

Delivery_Times <- read.table("Exercise.txt", header = TRUE)

names(Delivery_Times) <- c("X1")


histogram <- hist(X1,main = "Number of minutes",breaks = seq(20,70,length =9))


breaks <- seq(20, 70, length = 9)          
freq_table <- hist(X1, breaks = breaks, plot = FALSE)  


cum_freq <- cumsum(freq_table$counts)

midpoints <- freq_table$mids


plot(midpoints, cum_freq, type = "o", 
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Minutes", ylab = "Cumulative Frequency",
     )
 
