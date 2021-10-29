library(tidyverse)
library(plotly)

PC_w_cluster<-read_csv('PC_w_cluster.csv') %>% 
  mutate(cluster= cluster %>% as.factor() )

g <- ggplot(data = PC_w_cluster) +
  geom_point(aes(x= P1, y= P2, color = cluster, text = Subsector, shape= Sector)) +
  theme(legend.title = element_blank())

ggplotly(g, tooltip = c('text', 'shape'))
