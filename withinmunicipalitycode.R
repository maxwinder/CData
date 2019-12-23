

##importingdata from computer 

datamigrationmunicipalitylevel2011 <- read.csv("/Users/max/Desktop/Cdata project/municipality level/municipalitylevelmigration2011.csv")
datamigrationmunicipalitylevel2012 <- read.csv("/Users/max/Desktop/Cdata project/municipality level/municipalitylevelmigration2012.csv")
datamigrationmunicipalitylevel2013 <- read.csv("/Users/max/Desktop/Cdata project/municipality level/municipalitylevelmigration2013.csv")
datamigrationmunicipalitylevel2014 <- read.csv("/Users/max/Desktop/Cdata project/municipality level/municipalitylevelmigration2014.csv")
datamigrationmunicipalitylevel2015 <- read.csv("/Users/max/Desktop/Cdata project/municipality level/municipalitylevelmigration2015.csv")
datamigrationmunicipalitylevel2016 <- read.csv("/Users/max/Desktop/Cdata project/municipality level/municipalitylevelmigration2016.csv")
datamigrationmunicipalitylevel2017 <- read.csv("/Users/max/Desktop/Cdata project/municipality level/municipalitylevelmigration2017.csv")
datamigrationmunicipalitylevel2018 <- read.csv("/Users/max/Desktop/Cdata project/municipality level/municipalitylevelmigration2018.csv")


#list of municipalities
municipalities <- c("Aa en Hunze", "Achtkarspelen",	"Ameland",	"Appingedam",	"Assen",	"Bedum", "Bellingwedde",	
                    "het Bildt",	"Boarnsterhim",	"Ten Boer",	"Borger-Odoorn",	"Coevorden",	"Dantumadiel",	"Delfzijl",
                    "Dongeradeel",	"Eemsmond",	"Emmen",	"Ferwerderadiel",	"Franekeradeel",	"De Friese Meren",	"De Fryske Marren",
                    "Gaasterlân-Sleat",	"Groningen",	"Grootegast",	"Haren",	"Harlingen",	"Heerenveen",	"Hoogeveen",	"Hoogezand-Sappemeer",
                    "Kollumerland en Nieuwkruisland",	"Leek",	"Leeuwarden",	"Leeuwarderadeel",	"Lemsterland",	"Littenseradiel",	"Loppersum",
                    "De Marne",	"Marum",	"Menameradiel",	"Menterwolde", "Meppel",	"Midden-Drenthe",	"Midden-Groningen",	"Noordenveld",
                    "Oldambt",	"Ooststellingwerf",	"Opsterland",	"Pekela",	"Schiermonnikoog",	"Skarsterlân",	"Slochteren",	"Smallingerland",
                    "Stadskanaal",	"Súdwest-Fryslân",	"Terschelling",	"Tynaarlo",	"Tytsjerksteradiel",	"Veendam",	"Vlagtwedde",	"Vlieland",
                    "Waadhoeke",	"Westerveld",	"Westerwolde",	"Weststellingwerf",	"Winsum",	"De Wolden",	"Zuidhorn")

  dimnames(datamigrationmunicipalitylevel2011) <- list(FROM = municipalities,TO = municipalities) 
  dimnames(datamigrationmunicipalitylevel2012) <- list(FROM = municipalities,TO = municipalities) 
  dimnames(datamigrationmunicipalitylevel2013) <- list(FROM = municipalities,TO = municipalities) 
  dimnames(datamigrationmunicipalitylevel2014) <- list(FROM = municipalities,TO = municipalities) 
  dimnames(datamigrationmunicipalitylevel2015) <- list(FROM = municipalities,TO = municipalities) 
  dimnames(datamigrationmunicipalitylevel2016) <- list(FROM = municipalities,TO = municipalities) 
  dimnames(datamigrationmunicipalitylevel2017) <- list(FROM = municipalities,TO = municipalities) 
  dimnames(datamigrationmunicipalitylevel2018) <- list(FROM = municipalities,TO = municipalities) 


  municipality2011<- as.matrix(datamigrationmunicipalitylevel2011)
  municipality2012<- as.matrix(datamigrationmunicipalitylevel2012)
  municipality2013<- as.matrix(datamigrationmunicipalitylevel2013)
  municipality2014<- as.matrix(datamigrationmunicipalitylevel2014)
  municipality2015<- as.matrix(datamigrationmunicipalitylevel2015)
  municipality2016<- as.matrix(datamigrationmunicipalitylevel2016)
  municipality2017<- as.matrix(datamigrationmunicipalitylevel2017)
  municipality2018<- as.matrix(datamigrationmunicipalitylevel2018)
  
  install.packages("devtools")
  devtools::install_github("mattflor/chorddiag")
  
  # Now we load the package into our memory
  
  library('chorddiag')
  
  chorddiag(municipality2011, 
            groupnamePadding = 5, 
            showTicks = F,
            groupColors = heat.colors(length(try)),
            chordedgeColor = NULL)
 
  
  
   