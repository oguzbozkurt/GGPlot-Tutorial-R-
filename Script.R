install.packages("ggridges")
install.packages("ggplot2")
library("ggplot2")
library("ggridges")
getwd()
veri<-read.table("hava_durumu.txt",header=T,sep=" ",dec=".")
ggplot(data = veri, aes(x=Mean.Humidity, y=Month,fill=..x..))+
  labs(x = "Ortalama Nem Miktarý",
       y="Aylar",
       title="Aylara Göre Nem Oraný Degisimi")+
  geom_density_ridges_gradient(scale = 3) +
  scale_fill_viridis( alpha=1 ,begin = 1, end = 0.3,option = "B") +
  theme_ipsum() +
  theme(
    legend.position="none",
    strip.text.x = element_text(size = 8))+
  scale_y_discrete(expand = c(0.01, 0)) +
  scale_x_continuous(expand = c(0.01, 0)) 