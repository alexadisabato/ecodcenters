# distribution of outcome
hist(df_count$num_disasters, breaks = 30, col = "darkgray",
     main = "Distribution of Number of Disasters",
     xlab = "Number of Disasters")

# overdispersion check
mean(df_count$num_disasters)
var(df_count$num_disasters)

# residual diagnostics
hist(residuals(count_model), col = "darkgray")
plot(fitted(count_model), residuals(count_model))

# homoscedasticity test
library(lmtest)
bptest(count_model)