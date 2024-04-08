library(crypto2)
library(tidyverse)


list_coins<-crypto_list()

# Cryptos we want to compare to bitcoin
included_crypto <- c("Litecoin", "XRP", "Ethereum")

# Filter for wanted cryptocurrencies
filtered_coins <- list_coins %>%
  filter(name %in% included_crypto)




# Bitcoin Data
bitcoin <- crypto2::crypto_history(limit = 1, start_date = "20141231")

# Smaller Crypto Data
smaller_crypto <- crypto2::crypto_history(filtered_coins, start_date = "20141231", end_date = "20240327")

# Write Smaller crypto to csv
write.csv(smaller_crypto, "smaller_crypto.csv")

# Data From January 1, 2015 to March 27, 2024
write.csv(bitcoin, "bitcoin_history.csv" )








     