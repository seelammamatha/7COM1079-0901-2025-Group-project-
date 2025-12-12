# Histogram with Bell Curve
hist(df$unemployment_rate, probability = TRUE,
     main = "Distribution of Unemployment Rates",
     xlab = "Unemployment Rate (%)", col = "grey90")
lines(density(df$unemployment_rate), col = "blue", lwd = 2)
curve(dnorm(x, mean=mean(df$unemployment_rate), sd=sd(df$unemployment_rate)), 
      add=TRUE, col="red", lwd=2, lty=2)
