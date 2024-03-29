library(crypto2)
library(tidyverse)


list_coins<-crypto_list()


#x <- crypto2::crypto_history()


bitcoin <- crypto2::crypto_history(limit = 1, start_date = "20141231")

# Data From January 1, 2015 to March 27, 2024
write.csv(bitcoin, "bitcoin_history.csv" )

#xrp <- crypto_history(coin_list = NULL, start_date = "20200101", single_id = TRUE)
#bch<-crypto_history(coin = 'BCH', start_date = "20200101")
#ltc<-crypto_history(coin_list = crypto_list("Litecoin", "Ethereum"), start_date = "20150101")
#df<-rbind(btc,xrp,bch,ltc)



bitcoin_close <- ts(bitcoin$close)

acf(bitcoin_close)
pacf(bitcoin_close)



plot(log(bitcoin_close), main = "Bitcoin Close Price from 2015-2024",
     ylab = "Price",
     xlab = "Date")



     