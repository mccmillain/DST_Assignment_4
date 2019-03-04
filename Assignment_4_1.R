# Parse JSON into a data frame
js<-'{
"name": null, "release_date_local": null, "title": "3 (2011)",
"opening_weekend_take": 1234, "year": 2011,
"release_date_wide": "2011-09-16", "gross": 59954
}'
df_for_json <- as.data.frame(js)
df_for_json
str(df_for_json)

x = rnorm(100,50,12)
#set up boundaries for the intrvals
breaks = c(0,20,50,80,100)
#specify bin labels
labels =c("<20","20-50","50-80","80-100")
#bucketing data points into bins
bins = cut(x,breaks = breaks,include.lowest = T,right = FALSE, labels = labels)
summary(bins)
#plotting the count
plot(bins, main="Frequency", ylab="Count",col="bisque") 
