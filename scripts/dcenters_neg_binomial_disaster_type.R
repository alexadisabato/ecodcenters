df_disastertype <- read.csv('datacenter_disaster_by_type.csv')
model_disastertype_prediction <- glm.nb(num_disasters ~ num_data_centers * incidentType, data = df_disastertype)

summary(model_disastertype_prediction)