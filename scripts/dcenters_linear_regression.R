linear_df <- read.csv('datacenter_disaster_counts.csv')
linear_model <- lm(num_disasters ~ has_data_center, data = linear_df)

summary(linear_model)