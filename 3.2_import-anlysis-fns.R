
# Veri İmport

data <- read.csv("StudentPerformanceFactors.csv",sep = ";" )

# Sayısal Veri Analizi

#str - summary 

str(data)

summary(data$Hours_Studied)

#central tedency (mean , median)


#five-number-summary

quantile(data$Hours_Studied)


#sayısal veri görselleştirme

#univariate - bivariate - multivariate

#label : etiket

#univariate analiz
hist(data$Hours_Studied, main = "Title", xlab = "x ekseni", ylab = "y ekseni", col = "red", ylim = c(0,3000))
boxplot(data$Hours_Studied,main = "Title", xlab = "x ekseni", ylab = "y ekseni", col = "red", ylim = c(0,50))


#bivariate analiz
plot(data$Hours_Studied, data$Exam_Score,main = "Title", xlab = "x ekseni", ylab = "y ekseni", col = "red",
     ylim = c(0,150), cex = 2, pch = 19)



#karakter tipi veri analizi


table(data$Gender)

female <- 2793
male <- 3814

data2 <- data.frame(female, male)

library(ggplot2)
library(dplyr)
library(tidyr)

colnames(data2)

data3 <- data2 %>% 
  pivot_longer(
    cols = c("female", "male"  ),
    names_to ="gender" ,
    values_to = "count" ,
  )

ggplot(data3, aes(x= gender , y= count )) +
  geom_bar(stat = "identity", position = "dodge")

