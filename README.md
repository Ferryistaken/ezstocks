<div align=center>
    ![GitHub top language](https://img.shields.io/github/languages/top/Ferryistaken/ezstocks)
    ![GitHub](https://img.shields.io/github/license/Ferryistaken/ezstocks)
    ![GitHub repo size](https://img.shields.io/github/repo-size/Ferryistaken/ezstocks)
</div>



# EZStocks

An R wrapper to `quantmod` to more easily work with stock data and to remove redundant code.

## Main functions:

To get stock data:

```r
getStockData(
    stocks, # This is a list of the stocks. ex: c("AAPL", "MSFT", "AMZN")
    startYear = "2015",
    startMonth = "01",
    startDay = "01",
    endYear = format(Sys.Date(), "%Y"), # By default it's this year
    endMonth = format(Sys.Date(), "%m"), # By default it's this month
    endDay = format(Sys.Date(), "%d") # By default it's today
)
```

To get only one aspect of the stock:

```r
getCloseData(
    stockData # This is what the function `getStockData` returns
)
```

`getOpenData`, `getHighData`, `getLowData`, `getCloseData`, `getVolume` and `getAdjustedData` all work the same.

So you can call them like this:

```r
allData <- getStockData(c("GS", "JPM", "BOAC")) # Get all stock data of these 3 companies starting from 2015

closingData <- getCloseData(allData)
highData <- getHighData(allData)

cbind(closingData, highData)
```

The resultant will be a dataframe in which the first 3 columns are the closing prices of the 3 stocks,
and the last 3 columns will be the high prices of those stocks.
Each row will signify one day.
