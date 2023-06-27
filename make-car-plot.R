library(tidyverse)
library(ggthemes)
library(dplyr)
car_plot <- mtcars |> select(mpg, wt) |>
  ggplot(aes(x=wt, y=mpg)) + 
  geom_smooth(method = "lm", formula = y ~ x, se = FALSE) + 
  theme_clean() +
  labs(title = "Fuel Efficiency and Weight",
       subtitle = "Heavier cars are less fuel efficient",
       y = "MPG", x = "Weight (1000s of lbs)",
       caption = "Henderson and Velle")
write_rds(car_plot, "car-plot.rds")
