df_count <- read.csv('data/datacenter_disaster_counts.csv')
count_model <- lm(num_disasters ~ num_data_centers, data = df_count)

summary(count_model)