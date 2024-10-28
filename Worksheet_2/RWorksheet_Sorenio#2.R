---
  title: "RWorksheet_Sorenio#2.R."
output:
  pdf_document: default
html_document: default
date: "2024-09-26"
---
  
  # Using Vectors
  # 1. Create a vector using : operator
  # a
  x <- -5:5

  x
    
  # b
  x <- 1:7
  
  x
  # 2.Create a vector using seq() function
  seq <- seq(1, 3, by=0.2)
  
  seq
  
  # 3.	A factory has a census of its workers. There are 50 workers in total. The following list shows their ages:  34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35, 24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26, 18.
  # a
  ages <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35, 24, 33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26, 18)
  
  ages[3]
  
  # b
  ages[c(2, 4)]
  
  # c
  ages[-c(4, 12)]
  
  # 4.Create a vector x <- c("first"=3, "second"=0, "third"=9). Then named the vector, names(x).
  
  # a
  
  # 5.	Create a sequence x from -3:2.
  x <- -3:2
  
  x
  # a
  x[2] <- 0
  
  x
  
  # 5.a
  month <- c("Jan", "Feb", "March", "Apr", "May", "June")
  
  price_liter <- c(52.50, 57.25, 60.00, 65.00, 74.25, 54.00)
  
  purchase_quantity <- c(25, 30, 40, 50, 10, 45)
  
  fueldata <- data.frame(month, price_liter, purchase_quantity)
  
  print(fueldata)
  
  # b
  average_fuelprice <- weighted.mean(price_liter, purchase_quantity)
  
  print(average_fuelprice)
  
  # 7. a
  data(rivers)
  
  data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers), sd(rivers), min(rivers), max(rivers))
  
  data 
  
  # 8. a
  power_ranking <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25)
  
  celebrity_name <- c("Tom Cruise", "Rolling Stones", "Oprah Winfrey", "U2", "Tiger Woods", "Steven Spielberg", "Howard Stern", "50 Cent", "Cast of the Sopranos", "Dan Brown", "Bruce Springsteen", "Donald Trump", "Muhammad Ali", "Paul McCartney", "George Lucas", "Elton John", "David Letterman", "Phil Mickelson", "J.K. Rowling", "Brad Pitt", "Peter Jackson",  "Dr. Phil McGraw", "Jay Leno", "Celine Dion", "Kobe Bryant")
  
  pay <- c(67, 90, 225, 110, 90, 332, 302, 41, 52, 88, 55, 44, 55, 40, 233, 34, 40, 47, 25, 25, 39, 45, 32, 40, 31)
  
  celeb_data <- data.frame(power_ranking, celebrity_name, pay)
  
  celeb_data
  
  # b
  celeb_data[celeb_data$celebrity_name == "J.K. Rowling", "power_ranking"] <- 15
  
  celeb_data[celeb_data$celebrity_name == "J.K. Rowling", "pay"] <- 90
  
  celeb_data
  
  # c
  write.csv(celeb_data, "PowerRanking.csv", row.names = FALSE)
  
  imported_data <- read.csv("PowerRanking.csv")
  
  imported_data
  
  # d
  ranks_subset <- celeb_data[10:20, ]
  
  save(ranks_subset, file = "Ranks.RData")
  
  ranks_subset
  
  # 9. a
  library(readxl)
  
  file_path <- "C:/Users/User/Downloads/hotels-vienna.xlsx"
  hotels_data <- read_excel(file_path)
  head(hotels_data)
  
  # b
  dataset_dimensions <- dim(hotels_data)
  
  dataset_dimensions
  
  # c
  selected_data <- hotels_data[, c("country", "neighbourhood", "price", "stars", "accommodation_type", "rating")]
  
  head(selected_data)
  
  # d
  save(selected_data, file = "new.RData")
  
  file_exists <- file.exists("new.RData")
  
  print(file_exists)
  
  # e
  load("new.RData")
  
  head(selected_data)
  
  tail(selected_data)
  
  # 10 Create a list of vegetables you ate in your lifetime.
  # a
  vegetables <- c("Cabbage", "Squash", "Beans", "Lettuce", "Papaya", "Malunggay", "Potato", "Eggplant", "Mushroom", "Brocolli")
  
  print(vegetables)
  
  # b
  vegetables <- c(vegetables, "Carrot", "Green Peas")
  
  print(vegetables)
  
  # c
  vegetables <- append(vegetables, c("Radish", "Peanut", "Garlic", "Onion"), after = 5)
  
  print(vegetables)
  
  length(vegetables)
  
  # d
  vegetables <- vegetables[-c(5, 10, 15)]
  
  print(vegetables)
  
  length(vegetables)
