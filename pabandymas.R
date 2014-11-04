#hello butterfly
library(ggplot2)
library(extrafont)
windowsFonts(Monoton=windowsFont("Monoton"))
butterfly=function(x) 8-sin(x)+2*sin(3*x)+2*sin(5*x)-sin(7*x)+3*cos(2*x)-2*cos(4*x)
opt=theme(legend.position="none",
          panel.background = element_rect(fill="black"),
          panel.grid = element_blank(),
          axis.ticks=element_blank(),
          axis.title=element_blank(),
          axis.text =element_blank())
ggplot(data.frame(x = c(0, 2*pi)), aes(x)) +
  stat_function(fun=butterfly, geom="density", fill="#FC0C54", colour="#FC0C54") +
  coord_polar(start=-pi)+
  geom_text(x=.5, y=-14, colour="turquoise2", family="Monoton", label="COLDPLAY", size=12)+
  geom_text(x=1.5, y=14, colour="turquoise2", family="Monoton", angle=90, label="Up Down Up Down Up Down", size=6)+
  opt
