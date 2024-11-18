library(shiny)
library(shinydashboard)
library(dashboardthemes)
library(shinyjs)
library(shinycssloaders)
library(urltools)
library(tidyverse)
library(RCurl)
shinyUI(
  
  ##############################################################################3
  ######### Define Template For Use ###########################################
  ##############################################################################3
  tagList(
    dashboardPage(
      title = "Dashboards Collection",
      skin = "blue",
      
      
      ##############################################################################3
      ######### Header ##############################################################
      ##############################################################################3
      dashboardHeader(title = uiOutput("homepage")),
      
      ##############################################################################3
      ######### Side bar Menu #######################################################
      ##############################################################################3
      dashboardSidebar(
        # uiOutput("toolbox"),
        # hr(),
        sidebarMenu(id = "tab",
                    uiOutput("menu"))
      ),
      
      ##############################################################################3
      ######### Body ##############################################################
      ##############################################################################3
      dashboardBody(
        
        ## changing theme
        shinyDashboardThemes(
          theme = "grey_light"
        ),
        
        #### Main body comes from the modules based on the selected page in sidebar menu
        withSpinner(   # Spinner While Loading
          uiOutput("page"),
          type = 1)
      )

    ),#End Dashboard Page
    
  )# End Tag list
)# End UI