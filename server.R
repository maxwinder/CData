

shinyServer(function(input, output) {
  
  
  library(chorddiag)
  
  ###colors and names
  groupColors <- c("#FF0000FF", "#FF1700FF", "#FF2E00FF", "#FF4500FF", "#FF5B00FF", "#FF7200FF", "#FF8900FF", "#FFA000FF", "#FFB700FF",
                   "#FFCE00FF", "#FFE400FF", "#FFFB00FF", "#ECFF00FF", "#D5FF00FF", "#BEFF00FF", "#A7FF00FF", "#91FF00FF", "#7AFF00FF",
                   "#63FF00FF", "#4CFF00FF", "#35FF00FF", "#1EFF00FF", "#08FF00FF", "#00FF0FFF", "#00FF26FF", "#00FF3DFF", "#00FF54FF",
                   "#00FF6BFF", "#00FF81FF", "#00FF98FF", "#00FFAFFF", "#00FFC6FF", "#00FFDDFF", "#00FFF4FF", "#00F4FFFF", "#00DDFFFF",
                   "#00C6FFFF", "#00AFFFFF", "#0098FFFF", "#0081FFFF", "#006BFFFF", "#0054FFFF", "#003DFFFF", "#0026FFFF", "#000FFFFF",
                   "#0800FFFF", "#1E00FFFF", "#3500FFFF", "#4C00FFFF", "#6300FFFF", "#7A00FFFF", "#9100FFFF", "#A700FFFF", "#BE00FFFF",
                   "#D500FFFF", "#EC00FFFF", "#FF00FBFF", "#FF00E4FF", "#FF00CEFF", "#FF00B7FF", "#FF00A0FF", "#FF0089FF", "#FF0072FF",
                   "#FF005BFF", "#FF0045FF", "#FF002EFF", "#FF0017FF")
  
  GemeentesNoordNL <- c("Aa en Hunze", "Achtkarspelen",	"Ameland",	"Appingedam",	"Assen",	"Bedum", "Bellingwedde",	
                        "het Bildt",	"Boarnsterhim",	"Ten Boer",	"Borger-Odoorn",	"Coevorden",	"Dantumadiel",	"Delfzijl",
                        "Dongeradeel",	"Eemsmond",	"Emmen",	"Ferwerderadiel",	"Franekeradeel",	"De Friese Meren",	"De Fryske Marren",
                        "Gaasterlân-Sleat",	"Groningen",	"Grootegast",	"Haren",	"Harlingen",	"Heerenveen",	"Hoogeveen",	"Hoogezand-Sappemeer",
                        "Kollumerland en Nieuwkruisland",	"Leek",	"Leeuwarden",	"Leeuwarderadeel",	"Lemsterland",	"Littenseradiel",	"Loppersum",
                        "De Marne",	"Marum",	"Menameradiel",	"Menterwolde", "Meppel",	"Midden-Drenthe",	"Midden-Groningen",	"Noordenveld",
                        "Oldambt",	"Ooststellingwerf",	"Opsterland",	"Pekela",	"Schiermonnikoog",	"Skarsterlân",	"Slochteren",	"Smallingerland",
                        "Stadskanaal",	"Súdwest-Fryslân",	"Terschelling",	"Tynaarlo",	"Tytsjerksteradiel",	"Veendam",	"Vlagtwedde",	"Vlieland",
                        "Waadhoeke",	"Westerveld",	"Westerwolde",	"Weststellingwerf",	"Winsum",	"De Wolden",	"Zuidhorn")
  
  #
  #
  #
  #
  #
  #
  #
  #
  #
  #
  #
  
  
  
  GemeentesNoord2011 <- read.csv("https://raw.githubusercontent.com/maxwinder/CData/municipality/municipalitylevelmigration2011.csv")
  dimnames(GemeentesNoord2011) <- list(FROM = GemeentesNoordNL,TO = GemeentesNoordNL)
  Noord2011<- as.matrix(GemeentesNoord2011)
  
  
  
  
  
  #
  #
  #
  #
  #
  #
  #
  #
  #
  #
  #
  #
  #
  #
  #
  #
  #
  #
  
  
  
  
  output$distPlot <- renderChorddiag({
    
    if(input$select_year =="2011" && input$select_area == "Total"){
      chorddiag(prov2011, showTicks = F, groupnameFontsize = 14, groupnamePadding = 10, margin = 90)
    } else
      if(
        input$select_year =="2012" && input$select_area == "Total"){
        chorddiag(prov2012, showTicks = F, groupnameFontsize = 14, groupnamePadding = 10, margin = 90)
      } else
        if(
          input$select_year =="2013" && input$select_area == "Total"){
          chorddiag(prov2013, showTicks = F, groupnameFontsize = 14, groupnamePadding = 10, margin = 90)
        } else
          if(
            input$select_year =="2014" && input$select_area == "Total"){
            chorddiag(prov2014, showTicks = F, groupnameFontsize = 14, groupnamePadding = 10, margin = 90)
          } else
            if(
              input$select_year =="2015" && input$select_area == "Total"){
              chorddiag(prov2015, showTicks = F, groupnameFontsize = 14, groupnamePadding = 10, margin = 90)
            } else
              if(
                input$select_year =="2016" && input$select_area == "Total"){
                chorddiag(prov2016, showTicks = F, groupnameFontsize = 14, groupnamePadding = 10, margin = 90)
              } else
                if(
                  input$select_year =="2017" && input$select_area == "Total"){
                  chorddiag(prov2017, showTicks = F, groupnameFontsize = 14, groupnamePadding = 10, margin = 90)
                } else
                  if(
                    input$select_year =="2018" && input$select_area == "Total"){
                    chorddiag(prov2018, showTicks = F, groupnameFontsize = 14, groupnamePadding = 10, margin = 90)
                  } else
                    if(
                      input$select_year =="2011" && input$select_area == "North"){ #### deze wordt momenteel gehost
                      chorddiag(Noord2011, showTicks = F, groupnameFontsize = 14, groupnamePadding = 10, margin = 90)
                    } else
                      if(
                        input$select_year =="2012" && input$select_area == "North"){
                        chorddiag(Noord2012, showTicks = F, groupnameFontsize = 14, groupnamePadding = 10, margin = 90)
                      } else
                        if(
                          input$select_year =="2013" && input$select_area == "North"){
                          chorddiag(Noord2013, showTicks = F, groupnameFontsize = 14, groupnamePadding = 10, margin = 90)
                        } else
                          if(
                            input$select_year =="2014" && input$select_area == "North"){
                            chorddiag(Noord2014, showTicks = F, groupnameFontsize = 14, groupnamePadding = 10, margin = 90)
                          } else
                            if(
                              input$select_year =="2015" && input$select_area == "North"){
                              chorddiag(Noord2015, showTicks = F, groupnameFontsize = 14, groupnamePadding = 10, margin = 90)
                            } else
                              if(
                                input$select_year =="2016" && input$select_area == "North"){
                                chorddiag(Noord2016, showTicks = F, groupnameFontsize = 14, groupnamePadding = 10, margin = 90)
                              } else
                                if(
                                  input$select_year =="2017" && input$select_area == "North"){
                                  chorddiag(Noord2017, showTicks = F, groupnameFontsize = 14, groupnamePadding = 10, margin = 90)
                                } else
                                  if(
                                    input$select_year =="2018" && input$select_area == "North"){
                                    chorddiag(Noord2018, showTicks = F, groupnameFontsize = 14, groupnamePadding = 10, margin = 90) 
                                  } else
                                    if(
                                      input$select_year =="2011" && input$select_area == "Groningen"){
                                      chorddiag(Gro2011, showTicks = F, groupnameFontsize = 14, groupnamePadding = 10, margin = 90)
                                    } else
                                      if(
                                        input$select_year =="2012" && input$select_area == "Groningen"){
                                        chorddiag(Gro2012, showTicks = F, groupnameFontsize = 14, groupnamePadding = 10, margin = 90)
                                      } else
                                        if(
                                          input$select_year =="2013" && input$select_area == "Groningen"){
                                          chorddiag(Gro2013, showTicks = F, groupnameFontsize = 14, groupnamePadding = 10, margin = 90)
                                        } else
                                          if(
                                            input$select_year =="2014" && input$select_area == "Groningen"){
                                            chorddiag(Gro2014, showTicks = F, groupnameFontsize = 14, groupnamePadding = 10, margin = 90)
                                          } else
                                            if(
                                              input$select_year =="2015" && input$select_area == "Groningen"){
                                              chorddiag(Gro2015, showTicks = F, groupnameFontsize = 14, groupnamePadding = 10, margin = 90)
                                            } else
                                              if(
                                                input$select_year =="2016" && input$select_area == "Groningen"){
                                                chorddiag(Gro2016, showTicks = F, groupnameFontsize = 14, groupnamePadding = 10, margin = 90)
                                              } else
                                                if(
                                                  input$select_year =="2017" && input$select_area == "Groningen"){
                                                  chorddiag(Gro2017, showTicks = F, groupnameFontsize = 14, groupnamePadding = 10, margin = 90)
                                                } else
                                                  if(
                                                    input$select_year =="2018" && input$select_area == "Groningen"){
                                                    chorddiag(Gro2018, showTicks = F, groupnameFontsize = 14, groupnamePadding = 10, margin = 90)
                                                  } 
    
  })
  
})
