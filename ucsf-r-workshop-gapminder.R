gapminder <- read.table(file = "output/combined_gapMinder.tsv", sep = "\t", header = T)

## understanding your data
str(gapminder) 
typeof(gapminder$year) ## type of 
length(gapminder)  
ncol(gapminder) ## number of columns
nrow(gapminder) ## number of rows
dim(gapminder) ## dimensions
colnames(gapminder) ## column name
head(gapminder)
tail(gapminder)

## subsetting dataset
head(gapminder[3]) ## looking at the dataset inside, 3rd column
head(gapminder[["lifeExp"]]) ## probing column name
head(gapminder$year) ## by "$"
head(gapminder[gapminder$continent == "Africa", "gdpPercap"]) ##
head(gapminder[gapminder$continent == "Africa",])
africa <-gapminder[gapminder$continent == "Africa",] ## dataframes have two dimensions
gapminder[,-c(1:4)]
gapminder[gapminder$lifeExp > 80,] ## extract rows where lifeExp is longer than 80
gapminder[1, c(4, 5)] ## extract the first row, and the fourth and fifth columns
gapminder[gapminder$year == 2002 | gapminder$year == 2007,] ## extract rows that contain information for the years 2002 and 2007
gapminder[gapminder$year %in% c(2002, 2007),] ## extract rows that contain information for the years 2002 and 2007
write.table(africa, file="africa.txt",sep=",",row.names=F,quote=F)

## subsetting by dplyr
install.packages("dplyr")
library("dplyr")
year_country_gdp <- select(gapminder, year, country, gdpPercap)
year_country_gdp2 <- getminder %>% select(year, country, gdpPercap)
year_country_gdp_euro <- gapminder %>%
                            filter(continent == "Europe") %>%
                            select(year, country, gdpPercap)
                            
year_country_gdp_africa <- gapminder %>%
  filter(continent == "Africa") %>%
  select(lifeExp, country, year)
nrow(year_country_gdp_africa)
gdp_bycontinents <- gapminder %>%
  group_by(continent) %>%
  summarize(mean_gdpPercap=mean(gdpPercap))
x <- 4 == 3
if(x){
  4 == 3
}
if(any(gapminder$year == 2002)){
  print("Record(s) for the year 2002 found.")
}
## for loop
output_vector <- c()
for(i in 1:5){
  for(j in c('a', 'b', 'c', 'd', 'e')){
    print(paste(i,j))
  }
}
