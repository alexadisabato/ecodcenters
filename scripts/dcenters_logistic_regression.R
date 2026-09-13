df <- read.csv('data/datacenter_logistic_regression.csv')
model <- glm(hit_by_disaster ~ has_data_center, data = df, family = binomial())

summary(model)