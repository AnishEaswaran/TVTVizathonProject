library(tidyverse)
library(haven)
library(lmtest)
library(ggplot2)

global <- read.csv("C:/Users/prana/Downloads/Metrics_Data.csv")
view(global)

lm1 <- lm(global$Absolute_Change_HDI ~ global$Absolute_Change_HFI, global)
summary(lm1)

cor.test(global$Absolute_Change_HFI, global$Absolute_Change_HDI)
ggplot(data = global, mapping = aes(Absolute_Change_HFI, Absolute_Change_HDI)) + geom_point()
