library(readr)
library(rvest)

tbl <- html_table(read_html("https://en.wikipedia.org/wiki/List_of_S%26P_500_companies#S&P_500_component_stocks"))[[1]]

if (!dir.exists("./data")) dir.create("./data", recursive = TRUE)

write_csv(tbl, file = "./data/sp500.csv")
