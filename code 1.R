
## set working directory
getwd()
setwd("C:/Users/Peach/Desktop/dwsr")
## calculator
1 + 1
4 - 2
3 * 5
9 / 3
5 ** 3
4 %% 2 ## modulo
4 %% 3 ## modulo returns 1
## 
sqrt(25)
log(100)
exp(4.6)

help(mean)
## variables
## assign <-
income <- 25000
expense <- 18000
saving <- income - expense
print(saving)

paste0("Hello ","wolrd ", "I am")
## saving 1,000,000
## interest 8%
## 30 years
saving <- 1e6 ## 10^6
interest <- 0.08
years <- 30

saving_60yo <- saving * (1 + interest) ^ 30
print(saving_60yo)

monthly_budget <- saving_60yo / (20 * 12)
monthly_budget

## Data Types
## 1. numeric
## 2. character
## 3. logical
## 4. factor
## 5. date

(age <- 31)
class(age)
is.numeric(age)

my_name <- "Peach"
class(my_name)
is.character(my_name)

## case sensitive
"hello" == "hello"
5 > 2
5 >= 10
10 != 5
answer <- 10 <= 100

## factor
## factor NOMINAL
animals <- c ("cat", "dog", "dog", "hippo")
print(animals): class(animals)

animals <- factor(animals)
animals
class(animals)

## factor ORDINAL (order/ ranking)
temperatur <- c ("hot", "cold", "cold", "medium", "cold", "hot")
temperature <- factor(
  
## date
## yyyy-mm-dd hh:mm:ss tz
Sys.time()

x <- "2020-06-25"
x <- as.data.frame

## CONVERT DATA TYPES
x <- 100; class(x)
x <- as.character(x)
calss(x)
print(x)

## DATA STRUCTURES
## 1. vector
## 2. matrix
## 3. list
## 4. dataframe

## vector
my_friends <- c("Toy", "Top", "ean")
ages <- c(31, 28, 26)
food_allergy <- C(T, T, F)
 x <- 1:100
 y <- seq(1, 100, by=5)
 
 my_friends[1]
 my_friends[2]
my_friends[1:3] 

ages <- c(31, 28, 26, 30, 25)
ages[ages <= 30]
my_friends[ages <= 30]

## matrix == vector 2 dimensions
m1 <- matrix(1:9, nrow=3, ncol=3, byrow=T)

m1 + 100
m1 * 2
m2 <- 1/m1

(m2 <- matrix(1:6, nrow=3, ncol=2))
(m3 <- matrix(c(5,10), nrow=2, ncol=1))

ans <- m2 %*% m3
t(ans)

colnames(m1) <- c("foo", "bar", "hey")
rownames(m1) <- c("a", "b", 'c')

my_friends <- c("toy", "Top", "Bee")
ages <- c(31, 28, 30)
food_allergy <- c(T, T, F)

data.frame(m)


## BUilt in dataframe
data()
mtcars

head(mtcars, 3)
tail(mtcars, 3)
str(mtcars)
dim(mtcars)
summary(mtcars)


mean(mtcars$hp)
median(mtcars$hp)
sum(mtcars$hp)
sd(mtcars$hp)
length(mtcars$hp)
min(mtcars$hp)
max(mtcars$hp)
quantile(mtcars$hp)
sort(mtcars$hp, decreasing = T)

mtcars[mtcars$hp < 100, ]
mtcars[mtcars$hp < 100 & mtcars$carb == 2, ]
mtcars[mtcars$hp < 100 | mtcars$carb == 2, ]

##control flow
## 1. if-else

x <- 4
if (x %% 2 == 0) {print("x is even number .")}

friends <- c("Toy", "top", "bee")

## while
count <- 10
while (count > 0)
  
add_two_num <- function(num1, num2) { return(num1 + num2)}
ans <- add_two_num(10, -150)
print(ans)

customer_ages <- c(31, 42, 25, NA, 19)
mean(customer_ages, na.rm=TRUE)
sum(customer_ages, na.rm=TRUE)

customer_ages <- c(31, 42, 25, NA, 19, NA, 55, NA, 59, 29)


myStats <- function(x)
  mean_x <- mean(x)
sum_x <- sum(x)

## string manipulation
state.name

grep("south", state.name, value = TRUE)
state.name[40]
state.name[41]

grep("New", state.name, value = TRUE)
grep("a", state.name, value = TRUE)

grep("^M", state.name, value = TRUE)
grep("a$", state.name, value = TRUE)
grep("\\s", state.name, value = TRUE)
grep("^[AM]", state.name, value = TRUE)
grep("^[^AM]", state.name, value = TRUE)

library(tidyverse)
str_detect("python", pattern = "new")
state.name[ str_detect(state.name, pattern = "New")]

## DATE Manipulation
## yyyy-mm-dd hh:mm:ss
## install.packages("lubridate")
library(lubridate)

library(tidyverse)
x <- c(10, 20, 30, 40, NA, 100, NA, NA, 20)
mean(x, na.rm = TRUE)

replace_na(x, 500)

starwars
glimpse(starwars)

starwars <- starwars %>% select(-films, -vehicles, -starships)

sum(complete.cases(starwars))
mean(complete.cases(starwars))

check_na <- function(x) { sum(is.na(x))}

check_na( c(1:5, NA, 10, NA, NA, 100))

starwars %>%
summarise_all(.funs = check_na) %>%
 as.data.frame()
(mean_mass <- mean(starwars$mass, na.rm=TRUE))

starwars$mass <- replace_na(starwars$mass, mean_mass)

starwars %>% count(hair_color, sort=T)

starwars$hair_color <- replace_na(starwars$hair_color, "none")

starwars_clean <- drop_na(starwars)


library(tidyverse)
## Tidy Data format
world_bank_pop
glimpse(world_bank_pop)

## pivot from wide to long
long_world_pop <- world_bank_pop %>%
   gather(`2000`:`2017`, key=year, value=value)

## pivot long to wide format
glimpse(long_world_pop)
long_world_pop %>%
   spread(key = year, value = value)


##seperate / unite
table3 %>%
  separate(col = rate, into =c("cases", "pop"), sep = "/")
table5 %>%
  unite(newColumn, century, year, sep = "")
  separate(rate, into = c("cases", "pop")) %>%
  mutate_at(.vars = c("cases", "pop"), .funs = as.double)

  ## create tables for this second part
  ## data from https://en.as.com/resultados/futbol/inglaterra/
  ## 2019_2020/ranking/jugadores/goles/
  footballPlayers <- tribble(
    ~fullname, ~goals,
    "Vardy", 19,
    "Salah", 17,
    "Aubameyang", 17,
    "Ings", 16,
    "Aguero", 16,
    "Mane", 15,
    "Raul Jimenez", 15,
    "Martial", 14,
    "Rashford", 14,
    "Abraham", 13
  )
  
  footballTeams <- tribble(
    ~fullname, ~team,
    "Vardy", "Leicester",
    "Salah", "Liverpool",
    "Aubameyang", "Arsenal",
    "Aguero", "Man City",
    "Mane", "Liverpool",
    "Martial", "ManU",
    "Rashford", "ManU",
    "Abraham", "Chelsea",
    "Beckham", "ManU"
  )
  
  myFavPlayers <- tribble(
    ~fullname, ~team,
    "Vardy", "Leicester",
    "Ole", "ManU",
    "Cantona", "ManU",
    "Salah", "Liverpool",
    "Aguero", "Man City"
  )

  
  inner_join(footballplayers, footballTeams,by = "fullname")

  library(tidyverse)
ggplot(data = mtcars, mapping = ages(x = wt, y = mpg)) + geom_point()
