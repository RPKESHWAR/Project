library(readr)
FE2010 <- read_csv("FE2010.csv")
## Parsed with column specification:
## cols(
##   `EngDisplacement(X)` = col_double(),
##   `Fuel efficiency(Y)` = col_double()
## )
#performing linear regression
library(knitr)
model<-lm(FE2010$`Fuel efficiency(Y)` ~ FE2010$`EngDisplacement(X)`)
model
## 
## Call:
## lm(formula = FE2010$`Fuel efficiency(Y)` ~ FE2010$`EngDisplacement(X)`)
## 
## Coefficients:
##                 (Intercept)  FE2010$`EngDisplacement(X)`  
##                      50.563                       -4.521
#plotting the linear model
library("ggplot2")
ggplot() +
  geom_point(aes(x=FE2010$`EngDisplacement(X)`,y=FE2010$`Fuel efficiency(Y)`),colour='red')+
  geom_line(aes(x=FE2010$`EngDisplacement(X)`,y=predict(model,newdata = FE2010)),colour='blue')+
  ggtitle('FUEL ECONOMY VS ENGINE DISPLACEMENT')+
  xlab('Engine Displacement')+ylab('Fuel Economy')
#summary model
## 
## Call:
## lm(formula = FE2010$`Fuel efficiency(Y)` ~ FE2010$`EngDisplacement(X)`)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -14.486  -3.192  -0.365   2.671  27.215 
## 
## Coefficients:
##                             Estimate Std. Error t value Pr(>|t|)    
## (Intercept)                  50.5632     0.3985  126.89   <2e-16 ***
## FE2010$`EngDisplacement(X)`  -4.5209     0.1065  -42.46   <2e-16 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 4.624 on 1105 degrees of freedom
## Multiple R-squared:   0.62,  Adjusted R-squared:  0.6196 
## F-statistic:  1803 on 1 and 1105 DF,  p-value: < 2.2e-16










