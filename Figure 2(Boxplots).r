##Boxplots##
plot_num_receptive <- ggplot(data, aes(x = var_name, y = Score1)) +
  geom_boxplot(fill = "lightblue") +
  labs(title = "Average receptive_ae Score by var_name within Age Groups", x = "var_name", y = "Average Receptive Score") +
  facet_wrap(~ hearing_age_group, nrow = 1) +
  theme_minimal()+
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1)
  )

plot_num_expressive <- ggplot(data, aes(x = var_name, y = Score2)) +
  geom_boxplot(fill = "lightblue") +
  labs(title = "Average expressive_ae Score by var_name within Age Groups", x = "var_name", y = "Average Expressive Score") +
  facet_wrap(~ hearing_age_group, nrow = 1) +
  theme_minimal()+
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1)
  )



install.packages("ggsignif")
library(ggsignif)
##add significance bar and asterisk
sig_re_df <- data.frame(
  hearing_age_group = c(2,4),
  x1 = "Above Median",
  x2 = "Below Median",
  y = 70
)

plot_num_expressive +
  geom_segment(
    data = sig_re_df,
    aes(x = x1, xend = x2, y = y, yend = y),
    inherit.aes = FALSE
  ) +
  geom_segment(
    data = sig_re_df,
    aes(x = x1, xend = x1, y = y, yend = y - 2),
    inherit.aes = FALSE
  ) +
  geom_segment(
    data = sig_re_df,
    aes(x = x2, xend = x2, y = y, yend = y - 2),
    inherit.aes = FALSE
  ) +
  geom_text(
    data = sig_re_df,
    aes(x = 1.5, y = y + 2, label = "*"),
    inherit.aes = FALSE,
    size = 7,
  )

plot_num_receptive +
  geom_segment(
    data = sig_re_df,
    aes(x = x1, xend = x2, y = y, yend = y),
    inherit.aes = FALSE
  ) +
  geom_segment(
    data = sig_re_df,
    aes(x = x1, xend = x1, y = y, yend = y - 2),
    inherit.aes = FALSE
  ) +
  geom_segment(
    data = sig_re_df,
    aes(x = x2, xend = x2, y = y, yend = y - 2),
    inherit.aes = FALSE
  ) +
  geom_text(
    data = sig_re_df,
    aes(x = 1.5, y = y + 2, label = "*"),
    inherit.aes = FALSE,
    size = 7,
  )
