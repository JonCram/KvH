library("ggplot2")
library("grid")
source("~/_dev/themes/theme_cram/theme_cram.R")
df <- read.csv('~/_dev/analysis/KvH/KvH.csv')

ggplot() + 
  geom_line(data=df, aes(x=Year, y=K, colour="#C77966")) +
  geom_line(data=df, aes(x=Year, y=H, colour="#C77966")) + geom_area() +
  # scale_x_continuous(breaks=NULL) +
  theme_cram() +
  theme (
    panel.grid.major = element_line(color=NA),
    axis.ticks = element_line(colour = NA),                                  
    panel.grid.minor = element_line(color=NA),
    axis.text = element_text(color=NA),
    axis.title = element_text(color=NA),
    panel.background = element_rect(fill="#E3CDA4"),
    plot.background = element_rect(fill="#E3CDA4"),
    legend.position="none"
  )
