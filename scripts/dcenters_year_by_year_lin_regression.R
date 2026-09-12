years <- 2019:2024

results <- data.frame(year = integer(), estimate = numeric(), std_error = numeric(),
                      t_value = numeric(), p_value = numeric(), r_squared = numeric())

for (yr in years) {
  filename <- paste0('datacenter_linear_regression_', yr, '.csv')
  df_yr <- read.csv(filename)
  
  model_yr <- lm(num_disasters ~ has_data_center, data = df_yr)
  coefs_yr <- summary(model_yr)$coefficients
  
  results <- rbind(results, data.frame(
    year = yr,
    estimate = coefs_yr['has_data_center', 'Estimate'],
    std_error = coefs_yr['has_data_center', 'Std. Error'],
    t_value = coefs_yr['has_data_center', 't value'],
    p_value = coefs_yr['has_data_center', 'Pr(>|t|)'],
    r_squared = summary(model_yr)$r.squared
  ))
}

print(results)