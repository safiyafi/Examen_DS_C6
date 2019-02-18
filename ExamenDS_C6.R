
films<-read.csv(file="C:/Users/toshiba/Desktop/TP R/BaseFilms.csv",header=T,sep=";")
clients<-read.csv(file="C:/Users/toshiba/Desktop/TP R/BaseClients.csv",header=T,sep=";")

head(films)
head(clients)

dimF=dim(films)
dimC=dim(clients)

colnames(films)
colnames(clients)

TypeFilms<-merge(films, clients, 
             by.x= c("NomFilms"), by.y = c("NomFilms"),
             all.x = TRUE, all.y = TRUE)
View(TypeFilms)

nbrFilms=as.numeric(as.character(TypeFilms$NomFilms))
montant =as.numeric(as.character(TypeFilms$Prix))

Hebdo<-aggregate(data.frame(nbrFilm, 
                            by = list(week = TypeFilms$DateLocation), sum)
                 
View(Hebdo)



