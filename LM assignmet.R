View(ADANIPORTS.2)
head(ADANIPORTS.2)
str(ADANIPORTS.2)
summary(ADANIPORTS.2)
library(correlation)
cor(ADANIPORTS.2[c("Prev.Close"," Open","High","Low","Last","Close")])
  

model<-lm(ADANIPORTS.2$Prev.Close~ADANIPORTS.2$Open+ADANIPORTS.2$High+ADANIPORTS.2$Low+ADANIPORTS.2$Close)
summary(model)
plot(model)

res=residuals(model)
res

qqnorm(res)
qqline(res)

plot(res,fitted(model),main="Residual vs Fitted plot")


