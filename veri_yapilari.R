

#vectors : vektör veri yapıları içerisinde tek tip veri depolarlar

# x <- c(1,2,3,4,5)
x <- 1:5

class(x)

y <- c("merhaba", "yazilim","mehmet", "asli")

z <- c(1,2,3,"merhaba",T)


x[1]
y[1]
y[-1]
y[c(1,4)]


#factors : özel tipli vectordüler. Ancak kategori verileri için kullanırız


verim <- factor(c("female", "male"), levels = c("female","male", "hasan"))



#Liste: içerinde birden fazla farklı tipte vektörü tutabiir.


kayit_sistemi <- list("ad-soyad"= "Kerem Aslı",
                      "e-posta" = "hasandmr53@gmail.com",
                      "tel"= 05365982356,
                      "araba" = F)

kayit_sistemi[1]
kayit_sistemi$`ad-soyad`
kayit_sistemi[[1]]

kayit_sistemi[["e-posta"]]


#Data frame

data <- data.frame("ad-soyad"= "Kerem Aslı",
                   "e-posta" = "hasandmr53@gmail.com",
                   "tel"= 05365982356,
                   "araba" = F)

data[1]
data$ad.soyad

data[1,c(2,4)]


data[-3]

data[["araba"]]


#matrix

#5x3

kkk <- matrix(c(1:15), ncol = 5)
kkk2 <- matrix(c(1:15), nrow = 3)
kkk2
kkk2 <- matrix(c(1,2,"merhaba","yazilim"), nrow =2)


kkk[1,2]



