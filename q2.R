data(mtcars)

#3
fit <- lm(mpg~wt, data = mtcars)
predict(fit,newdata=data.frame(wt=mean(wt)), interval = "confidence", level = 0.95)


#5
predict(fit,newdata=data.frame(wt=3), interval = "prediction", level = 0.95)

#6
fit2 <- lm(mpg~I(wt/2), data = mtcars)
confint(fit2,level = 0.95)