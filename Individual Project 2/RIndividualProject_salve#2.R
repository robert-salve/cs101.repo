#Individual Project 2
#Ben Robert T. Salve. BSIT2-A


#Packages to be used.
library ('twitteR')
library ('dplyr')
library('ggplot2')
library('RColorBrewer')
library('rtweet')
library('tm')
library('plotly')


#Set-up credentials. 
CONSUMER_SECRET <- "LG0WSDLUwuTem8CILwqA6jVVdXt5V0sPIWZrhyu5eAueMl3mpj"
CONSUMER_KEY <- "ZsTLvPJEbkP2IKkYaWS6TwdqJ"
ACCESS_SECRET <- "LoVm9i1RQyxrKmynklWY5sNGKTZfX57oUJqTw81IrvY9t"
ACCESS_TOKEN <- "1595121466819084289-2uIKKMfw20RnPjo23cmTooolh9VxZp"


#Connect to twitter.
setup_twitter_oauth(consumer_key = CONSUMER_KEY, 
                    consumer_secret = CONSUMER_SECRET,
                    access_token = ACCESS_TOKEN,
                    access_secret = ACCESS_SECRET)


#Changing global options because mine has 1k limit.
options(max.print = 10000) 


#Collect twitter data.
trends2 <- searchTwitter("#wednesdaynetflix", n = 10000, lang = "en",
                        since = "2022-11-26", until = "2022-12-9",
                        retryOnRateLimit = 120)
trends2


#Load data.
load(file= "trends_retweet")
View(trends_retweet)

#Data to data frame.
trends_retweet <- twListToDF(trends2)
save(trends_retweet, file = "trends_retweet.Rdata")


#Tweets.
tweet_origin <- trends_retweet %>%
  select(screenName,text,created,statusSource,isRetweet) %>% 
  filter(isRetweet == "FALSE")
save(tweet_origin, file = "tweet_origin.Rdata")


#Tweets including retweets.
retweet_origin <- trends_retweet %>%
  select(screenName,text,created,statusSource,isRetweet) %>% 
  filter(isRetweet == "TRUE")
save(retweet_origin, file = "retweet_origin.Rdata")


#Tweet only data. 
tweet_origin %>%  
  group_by(1) %>%  
  summarise(max = max(created), min = min(created))

tweet <- tweet_origin %>%  mutate(Created_round1 = created %>% round(units = 'hours') %>% as.POSIXct())
tweet

min1 <- tweet_origin %>% pull(created) %>% min()
min1 
max1 <- tweet_origin %>% pull(created) %>% max()
max1


#With retweet data.
retweet_origin %>%  
  group_by(1) %>%  
  summarise(max = max(created), min = min(created))

retweets1 <- retweet_origin %>%  mutate(Created_round2 = created %>% round(units = 'hours') %>% as.POSIXct())
retweets1

min2 <- retweet_origin %>% pull(created) %>% min()
min2 
max2 <- retweet_origin %>% pull(created) %>% max()
max2


#Tweets plot.
tweets1 <- ggplot(tweet_origin, aes(x= created)) + geom_histogram(aes(fill = ..count..)) +
  theme(legend.position = "right") + xlab("Time") + ylab("Number of tweets") + 
  scale_fill_gradient(low = "midnightblue", high = "cyan")

tweets1 %>% ggplotly()


#Tweets with retweets plot. 
tweets2 <- ggplot(retweet_origin, aes(x = created)) + geom_histogram(aes(fill = ..count..)) +
  theme(legend.position = "right") + xlab("Time") + ylab("Number of tweets") + 
  scale_fill_gradient(low = "midnightblue", high = "violet")

tweets2 %>% ggplotly()


