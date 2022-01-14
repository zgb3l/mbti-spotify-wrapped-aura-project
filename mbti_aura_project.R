# Load packages
library(readr)
library(tidyverse)

# Load the data I collected myself
mbti_aura <- read_delim("mbti_spotify_wrapped_aura_data.csv", delim = ";", 
                        escape_double = FALSE, trim_ws = TRUE)
View(mbti_spotify_aura_data)

# clean the data
colnames(mbti_aura) <- c("TYPE", "WORDS", "WORD_ORDER", "COLORS", "COLOR_ORDER", 
                         "TYPE_CATEGORY", "STRATEGY")

# Explore data
unique(mbti_aura$TYPE)
unique(mbti_aura$COLORS)
unique(mbti_aura$WORDS)

# Subset per type_category
analysts <- mbti_aura %>%
  select(TYPE, COLORS, COLOR_ORDER, TYPE_CATEGORY, STRATEGY) %>%
  filter(TYPE_CATEGORY == "analyst")

diplomats <- mbti_aura %>%
  select(TYPE, COLORS, COLOR_ORDER, TYPE_CATEGORY, STRATEGY) %>%
  filter(TYPE_CATEGORY == "diplomat")

sentinels <- mbti_aura %>%
  select(TYPE, COLORS, COLOR_ORDER, TYPE_CATEGORY, STRATEGY) %>%
  filter(TYPE_CATEGORY == "sentinel")

explorers <- mbti_aura %>%
  select(TYPE, COLORS, COLOR_ORDER, TYPE_CATEGORY, STRATEGY) %>%
  filter(TYPE_CATEGORY == "explorer")


# Plotting for analysts
analyst_plot <- ggplot(analysts, aes(x=COLORS, fill=COLORS)) +
  geom_bar() +
  labs(title="Most common colors for analyst types",
       x = "Colors", y = "Count") +
  facet_wrap(vars(TYPE)) +
  scale_fill_manual(values = c("blue" = "#5392E0",
                               "lilac" = "#A385E0",
                               "neon green" = "#AAFA47",
                               "orange" = "#FA763A",
                               "pastel green" = "#6FE086",
                               "pink" = "#FF8FE1")) +
  guides(fill=guide_legend(title="Colors"))



# Plotting for diplomats
diplomat_plot <- ggplot(diplomats, aes(x=COLORS, fill=COLORS)) +
  geom_bar() +
  labs(title="Most common colors for diplomat types",
       x = "Colors", y = "Count") +
  facet_wrap(vars(TYPE)) +
  scale_fill_manual(values = c("blue" = "#5392E0",
                               "lilac" = "#A385E0",
                               "neon green" = "#AAFA47",
                               "orange" = "#FA763A",
                               "pastel green" = "#6FE086",
                               "pink" = "#FF8FE1")) +
  guides(fill=guide_legend(title="Colors"))


# Plotting for sentinels
sentinel_plot <- ggplot(sentinels, aes(x=COLORS, fill=COLORS)) +
  geom_bar() +
  labs(title="Most common colors for sentinel types",
       x = "Colors", y = "Count") +
  facet_wrap(vars(TYPE)) +
  scale_fill_manual(values = c("blue" = "#5392E0",
                               "lilac" = "#A385E0",
                               "neon green" = "#AAFA47",
                               "orange" = "#FA763A",
                               "pastel green" = "#6FE086",
                               "pink" = "#FF8FE1")) +
  guides(fill=guide_legend(title="Colors"))

# Plotting for explorers
explorer_plot <- ggplot(explorers, aes(x=COLORS, fill=COLORS)) +
  geom_bar() +
  labs(title="Most common colors for explorers types",
       x = "Colors", y = "Count") +
  facet_wrap(vars(TYPE)) +
  scale_fill_manual(values = c("blue" = "#5392E0",
                               "lilac" = "#A385E0",
                               "neon green" = "#AAFA47",
                               "orange" = "#FA763A",
                               "pastel green" = "#6FE086",
                               "pink" = "#FF8FE1")) +
  guides(fill=guide_legend(title="Colors"))



