library(GEOquery)

geo_data <- getGEO("GSE108474", GSEMatrix = TRUE)
head(geo_data)
?geo_data

geo_data <- geo_data[[1]]


head(geo_data)
str(geo_data)

expression_data <- exprs(geo_data)
sample_data <- pData(geo_data)
feature_data <- fData(geo_data)


write.csv(expression_data, "C:/Users/Risha/Desktop/Tora Project/Datasets/GSE108474_expression_data.csv", row.names = TRUE)
