##############################################################################3
######### Loading Libraries ###################################################
##############################################################################3
packages <- c("DBI", # Connecting to and importing SQL data
              "shiny",
              # "shinyjs",
              "shinyBS",
              "flexdashboard", # For Gauge and Semantics # Has Conflict with Some Packages
              "shinythemes",
              "shinyWidgets",
              "shinydashboard"
              # "shinydashboardPlus", # For dashboard footer
              # "dashboardthemes",
              # "shinycssloaders", # For Loading Spinner
              # "readxl", # Write Excel Files
              # "stringr", # Working with strings
              # "urltools", # Working with URLs
              # "DT", # Interactive Tables
              # "reactable", # Interactive Tables
              # "tidyverse", # dplyr, ggplot2, ...
              # "rgdal", # Reading Shapefile
              # "maptools", # unionSpatialPolygons
              # "leaflet", # Interactive Maps
              # "plotly", # Interactive Charts
              # "lubridate", # Working with Time and Date
              # "plm", # Working with panel data
              # "DBI", # Reading Data From SQL
              # "odbc", # Connecting to SQL
              # "RSQLite", #
              # "openxlsx", # Writing in Excel Sheets
              # "strucchange", #Analysing Structural Change in Timeseries
              # "collapsibleTree", # Dendogram
              # "RColorBrewer", # Color
              # "shinymanager", # Password Manager
              # "keyring", # keyring package to set database key
              # "crosstalk", #interactive data selection
              # "xts", # Defining timeseries for highcharter
              # "highcharter", # Visualisation
              # "d3scatter", #visualisation
              # "shinyjs"        # allows use of Javascript--used for sidebar closing ability
)

### Load Packages # Install if not present
# lapply(packages, function(x){
#   if (!require(x, character.only = TRUE)){
#     install.packages(x)
#     require(x, character.only = TRUE)
#   }
# })

lapply(packages, require, character.only = TRUE)

##############################################################################3
######### Data Source Directory ###############################################
##############################################################################3

# Data Files
# datasource <- "/home/mmoallem/Database/"


# Modules Within App Directory
modulessource <- c("https://raw.githubusercontent.com/mortezamoallemi/dynamic_shinyapp_example/main/modules/")


##############################################################################3
######### Functions ####################################################
##############################################################################3



##############################################