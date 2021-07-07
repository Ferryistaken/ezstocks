getOpenData <- function(
    data
) {
    library(dplyr)

    openData <- select(data, contains("Open"))

    return(openData)
}

getHighData <- function(
    data
) {
    library(dplyr)

    highData <- select(data, contains("High"))

    return(highData)
}

getLowData <- function(
    data
) {
    library(dplyr)

    lowData <- select(data, contains("Low"))

    return(lowData)
}

getCloseData <- function(
    data
) {
    library(dplyr)

    closeData <- select(data, contains("Close"))

    return(closeData)
}

getVolume <- function(
    data
) {
    library(dplyr)

    volume <- select(data, contains("Volume"))

    return(volume)
}

getAdjustedData <- function(
    data
) {
    library(dplyr)

    adjustedData <- select(data, contains("Adjusted"))

    return(adjustedData)
}
