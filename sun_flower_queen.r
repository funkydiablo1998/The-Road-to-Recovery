# Script to aid in the road to recovery

#1. Create the environment
rm(list=ls())

#2. Load packages
library(ggplot2)
library(dplyr)
library(tidyverse)

#3. Read the dataset
data <- read.csv("road_to_recovery.csv")

#4. Inspect the data
str(data)

#5. Transform the data
data_transformed <- data %>%
  mutate(gender = ifelse(gender == 1, 'male', 'female')) %>%
  select(age, gender, year, recovery_rate)

#6. Explore the data
head(data_transformed)

#7. Visualize the data
ggplot(data=data_transformed, aes(x=age, y=recovery_rate, color=year)) + 
  geom_point() +
  facet_grid(~gender) +
  labs(title = "The Road to Recovery")

#8. Calculate summary statistics
data_summary <- data_transformed %>%
  group_by(year) %>%
  summarise(mean_recovery_rate = mean(recovery_rate),
            median_recovery_rate = median(recovery_rate))

#9. Visualize summary statistics
ggplot(data=data_summary, aes(x=year, y=mean_recovery_rate, color=year)) + 
  geom_line() +
  geom_point() +
  geom_text(aes(label=round(mean_recovery_rate,2)), vjust="inward") +
  labs(title = "The Road to Recovery: Summary Statistics")

#10. Estimate a linear model
model <- lm(recovery_rate ~ age + gender + year, data=data_transformed)
summary(model)

#11. Test the linear model
anova(model)

#12. Calculate predicted values
predicted_values <- predict(model, data_transformed)

#13. Visualize the predicted values
ggplot(data=data_transformed, aes(x=age, y=recovery_rate, color=year)) + 
  geom_point() +
  geom_line(data=data_transformed, aes(y=predicted_values)) +
  facet_grid(~gender) +
  labs(title = "The Road to Recovery: Predicted Values")

#14. Test the assumptions of the linear model
# Assumption 1: Normality
shapiro.test(residuals(model))

# Assumption 2: Homoscedasticity
plot(model)

# Assumption 3: Independence
Breslow-Day.test(model)

#15. Identify influential points
influence.measures(model)

#16. Interact with the data
interaction_data <- data_transformed %>%
  mutate(gender_year = interaction(gender, year))

#17. Fit an interaction model
interaction_model <- lm(recovery_rate ~ age + gender_year, data=interaction_data)
summary(interaction_model)

#18. Test the interaction model
anova(interaction_model)

#19. Calculate predicted values
predicted_values_2 <- predict(interaction_model, interaction_data)

#20. Visualize the predicted values
ggplot(data=interaction_data, aes(x=age, y=recovery_rate, color=gender_year)) + 
  geom_point() +
  geom_line(data=interaction_data, aes(y=predicted_values_2)) +
  labs(title = "The Road to Recovery: Predicted Values (Interaction Model)")

#21. Test assumptions of the interaction model
# Assumption 1: Normality
shapiro.test(residuals(model))

# Assumption 2: Homoscedasticity
plot(model)

# Assumption 3: Independence
Breslow-Day.test(model)

#22. Identify influential points
influence.measures(model)

#23. Calculate adjusted R2
adjusted_r2 <- 1 - (1- summarise(model)$r.squared)*
  (summarise(model)$df[1]/summarise(model)$df[2]) 
  
#24. Evaluate the model 
# Compare predictors
anova(model, interaction_model)

# Compare adjusted R2
cat("Model:", summarise(model)$r.squared, "\n")
cat("Interaction Model:", adjusted_r2)

#25. Save the model
saveRDS(interaction_model, "road_to_recovery.RDS")