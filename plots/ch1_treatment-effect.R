
library(tidyverse)
library(here)

# Binary treatment --------------------------------------------------------

trt_0 <- tibble(trt = rep(0, 50),
                y = rnorm(mean = 3, n = 50))

trt_1 <- tibble(trt = rep(1, 50),
                y = rnorm(mean = 6, n = 50))

df <- rbind(trt_0, trt_1)

df %>% 
  ggplot() + 
  geom_point(aes(trt, y), alpha = .5) + 
  geom_smooth(aes(trt, y), method = "lm") +
  scale_x_continuous(breaks = c(0, 1), labels = c("0", "1")) +
  labs(x = "Treatment",
       y = "Outcome")


# Continuous treatment ----------------------------------------------------

trt_1 <- tibble(trt = rep(1, 50),
                y = rnorm(mean = 3, n = 50))

trt_2 <- tibble(trt = rep(2, 50),
                y = rnorm(mean = 6, n = 50))

trt_3 <- tibble(trt = rep(3, 50),
                y = rnorm(mean = 9, n = 50))

trt_4 <- tibble(trt = rep(4, 50),
                y = rnorm(mean = 12, n = 50))

df <- rbind(trt_1, trt_2, trt_3, trt_4)

df %>% 
  ggplot(aes(trt, y)) + 
  geom_point() + 
  geom_jitter() +
  geom_smooth(method = "lm") +
  scale_x_continuous(breaks = c(1, 2, 3, 4), labels = c("1", "2", "3", "4")) +
  labs(x = "Treatment",
       y = "Outcome")












