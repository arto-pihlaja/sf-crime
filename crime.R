loadCsv <- function(){
sf.cr <- read.csv("C:\\Users\\setup\\Documents/coursera/uw/datascience/assignment6/sanfrancisco_incidents_summer_2014.csv", sep=",")
sf.cr
}

sf.df <- loadCsv()

convert.dates <- function(sf.df){
    sf.df$Date <- strptime(sf.df$Date, format="%m/%d/%Y")
    sf.df
}
sf.df <- convert.dates(sf.df)