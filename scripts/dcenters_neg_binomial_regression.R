library(MASS)
df_count <-- read.csv('datacenter_disaster_counts.csv')
model_nb <- glm.nb(num_disasters ~ num_data_centers, data = df_count)

summary(model_nb)