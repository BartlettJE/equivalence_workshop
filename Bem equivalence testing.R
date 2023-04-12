library(tidyverse)
library(TOSTER)
library(readxl)

data <- read_excel("exp1.xlsx")

mean_hit <- mean(data$Erotic.Hits.PC)
sd_hit <- sd(data$Erotic.Hits.PC)
mu <- 50
n <- nrow(data)
lower <- 88 - mu
upper <- 100 - mu

TOSTone.raw(m = mean_hit,
        mu = mu,
        sd = sd_hit,
        n = n, 
        low_eqbound = lower,
        high_eqbound = upper,
        alpha = 0.05)

tsum_TOST(m1 = mean_hit,
          sd1 = sd_hit,
          n1 = n,
          hypothesis = "EQU",
          low_eqbound = lower,
          high_eqbound = upper,
          mu = mu)

