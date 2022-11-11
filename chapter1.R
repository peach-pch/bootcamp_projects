# get working directory (PATH)
getwd()

setwd(C:\\Users\\Peach\\Dropbox\\My PC (LAPTOP-8H1R6UHT)\Desktop\pengui
list.files()
1 + 1
5 - 2
5 * 2
6 / 3 
5 ** 2 
10 %% 2 
10 %% 7 modulo
exp(5)
log(10)

rm(saving)

score <- 95
ifelse(score >= 80, "passed", "failed")
ifelse( (score <- 23) >= 80, "Good Job", "Try again" )

print("Hello World")
print( paste("Hello", "Toy", "I am learn R for data science")  )

# \n newline
cat("Hello world\t"); cat("Today is Saturday")

x <- 100
class (x)
is.numeric(x)

y <- "Peach"
class(y)
is.character(y)
is.numeric(y)

z <- TRUE
class(z)
is.logical(z)

x <- 100
x <- as.character(x)
class(x)

TRUE == 1
FALSE == 0

2 + 2 == 4
5 - 2 != 10
7 > 2 


x <- c(TRUE, TRUE, FALSE, FALSE, TRUE)
sum(x)
mean(x)


gender <- c("M", "M", "F", "F", "F")
gender <- factor(gender)
class(gender)
is.factor(gender)

gender <- c(0, 0, 1, 0, 1)
gender <- factor(gender, 
       levels = c(0,1), 
       labels = c("male", "female"))

temperatures <- c("high", "high", "medium", "low", "high")
temperatures <- factor(temperatures, levels = c("low", "medium", "high"), ordered = TRUE)

(numbers <- c(100, 120, 150, 200, 380))
length(numbers)

(ages <- c(David=25, John=30, May=28, Meen=32, Nun=33))
rep("Hello", 15)
seq(1, 100, 5)
1:10
11:18

friends <- c("David", "John", "Mary", "Anne")
class(friends)

m1 <- matrix(1:25, ncol = 5, byrow = TRUE)
m1

m2 <- 1:25
dim(m2) <- c(5,5) 

customer_01 <- list(
  fname = "David",
  lname = "Beckham",
  age = 42,
  movies = c("The Dark Knight", "Avengers", "Soul"),
  random_matrix = m2
)

customer_02 <- list(
  fname = "Peach",
  lname = "Laoyookong",
  age = 26,
  movies = c("whiplash", "Jurassic Park")
)

all_customers <- list(
  David = customer_01,
  Peach = customer_02
)

all_customers[1][[1]][[4]][1]

id <- 1:5
cust_names <- c("summer", "David", "John", "Rooney", "Torres")
ages <- c(32, 25, 18, 31, 35)
action_lover <- c(T, F, F, T, T)

customers <- data.frame(id, cust_names, ages, action_lover)
View(customers)

getwd()
list.files()

penguins <- read.csv("penguins.csv")
View(penguins)

clean_penguins <- na.omit(penguins)
View(clean_penguins)

write.csv(clean_penguins, "clean_penguins.csv", row.names = F)

head(penguins, 10)
tail(penguins, 10)
str(penguins)

sum(!complete.cases(penguins))
na.omit(penguins)
mean
mean(!complete.cases(penguins))

summary(penguins)

penguins[1:10, 1:3]
penguins[1:5, ]
penguins[ , 1:2]

penguins[1:10, "species"]
penguins[1:10, c("species", "island", "sex", "year")]

penguins[ penguins$body_mass_g >= 5000, c("species", "body_mass_g")]

