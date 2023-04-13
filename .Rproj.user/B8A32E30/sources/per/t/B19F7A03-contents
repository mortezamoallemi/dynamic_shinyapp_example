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
        
        tags$script('$(".sidebar-menu a[data-toggle=\'tab\']").click(function(){window.scrollTo({top: 0});})'),
        # Keep header/sidebar frozen at top, per https://stackoverflow.com/questions/45706670/shiny-dashboadpage-lock-dashboardheader-on-top
        tags$script(HTML("$('body').addClass('fixed');")), 
        
        # This line allows us to use Javascript; so far, it's only used to make the
        # sidebar go away once we've changed pages, per https://stackoverflow.com/questions/47830553/r-shiny-automatically-hide-the-sidebar-when-you-navigate-into-tab-items
        useShinyjs(),
        
        #### Main body comes from the modules based on the selected page in sidebar menu
        ## Method 1:
        withSpinner(   # Spinner While Loading
          uiOutput("page"),
          type = 1),
        ## Method 2:
        # tags$div(id = "page"), # id is the address for the selector in InsertUI
        
        # Icons
        tags$head(
          tags$link(rel = "shortcut icon", href = "images/favicon.ico"),
          tags$link(rel = "apple-touch-icon",  type = "image/png", sizes = "180x180", href = "images/apple-touch-icon.png"),
          tags$link(rel = "icon", type = "image/png", sizes = "32x32", href = "images/favicon-32x32.png"),
          tags$link(rel = "icon", type = "image/png", sizes = "16x16", href = "images/favicon-16x16.png")
        ),
        tags$div(style = "height:50px;") # To keep enough distance between page anf the footer
      )
      ##############################################################################3
    ),#End Dashboard Page
    
    # Footer
    # dashboardFooter(
    #   left = "By Finance Data Analytics Team",
    #   right = paste(Sys.Date())
    # )
    # Position could be: relative, fixed, or absolute
    tags$footer(p("By Data Analytics Team"),
                align = "center", 
                style = 
                  "position: relative;
              bottom:0;
              width:100%;
              height:50px;   /* Height of the footer */
              color: white;
              padding: 10px;
              background-color: #A5A5DE;
              z-index: 1000;")
    
  )# End Tag list
)# End UI