# This is a function which gets the data about a list of stocks and puts it into a sane structure

getStockData <- function(
    stocks,
    startYear = "2015",
    startMonth = "01",
    startDay = "01",
    endYear = format(Sys.Date(), "%Y"),
    endMonth = format(Sys.Date(), "%m"),
    endDay = format(Sys.Date(), "%d")
) {
    library(quantmod)

    if (missing(startYear) || missing(startMonth) || missing(startDay)) {
        endDate <- paste0(endYear, "-", endMonth, "-", endDay)

        # Get list of all stock data
        stocks <- lapply(as.list(stocks), function(x) {
            tmp <- try(getSymbols(x, to = endDate, auto.assign = FALSE))
            if(!inherits(tmp, 'try-error'))
                tmp})

        return(as.data.frame(stocks))
    } else {
        # compute start date
        startDate <- paste0(startYear, "-", startMonth, "-", startDay)
        endDate <- paste0(endYear, "-", endMonth, "-", endDay)

        # Get list of all stock data
        stocks <- lapply(as.list(stocks), function(x) {
            tmp <- try(getSymbols(x, from = startDate, to = endDate, auto.assign = FALSE))
            if(!inherits(tmp, 'try-error'))
                tmp})

        return(as.data.frame(stocks))
    }
}
