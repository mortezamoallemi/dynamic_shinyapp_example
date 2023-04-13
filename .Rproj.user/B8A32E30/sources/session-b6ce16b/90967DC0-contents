shinyServer(function(input, output, session) {
  
  ## Load Setup File #It should automatically load, but sometimes not
  source("R/setup.R", local = T)
  
  ##############################################################################3
  ######### Load Selected Toolbox #################################################
  ##############################################################################3
  output$homepage <- renderUI({
    tags$a(href = "", "Forecasting Toolbox ", style = "color:white")
  })
  
  menu = paste0(modulessource, "menu.R")
  
  if (RCurl::url.exists(menu)) {
    source(menu, local = TRUE)
  }
  
  ##############################################################################3
  ######### Load Selected Page #################################################
  ##############################################################################3
  observeEvent(session$clientData$url_search,{
    
    
    ###################### Load home page if page is missing
    try({
      if (is.na(isolate(session$clientData$url_search) %>%
                param_get("page"))){
        
        updateQueryString(
          queryString = isolate(session$clientData$url_search) %>%
            param_set(key = c("page"),
                      value = c("home")),
          mode = c("push"),
          session = getDefaultReactiveDomain()
        )
        
      }}, silent = T)
    

    ##########################
    ## Get Parameters
    parameters = isolate(session$clientData$url_search) %>% ## Get URL
      url_decode() %>%  ## Convert %20 to space
      param_get(parameter_names = c("page")) ## Extract Parameters


    ##############################################################################3
    ######### Load Selected Page #################################################
    ##############################################################################3
    # To read the file from storage 
    pagefile <- paste0(modulessource, parameters$page, ".R") # remove leading "?", add ".R"
    
    # Page ID # For Modularisation
    pagename <- paste0(parameters$page) %>% gsub(pattern = " ", replacement = "")
    pageid <- paste0(pagename, as.numeric(Sys.time()))
    
    #### Load Page
    if (RCurl::url.exists(pagefile)) {
      
      ##### Read Page UI and Server from the storage
      # Here we read the file for each page when it is called by the user. 
      # Another option is to read all the files at the start of shinyapp; 
      # but the former one gives us the ability to see the changes we make to the file without the need to reload all the shiny app. 
      # So, in the development phase, reading a page file when needed is a more efficient way.
      source(pagefile, local = TRUE)
      
      ##### Build Page UI
      # Selection of the method should be inline with the UI
      ## Method 1:
      output$page <- renderUI(
        UI(id = pageid)
      )

      ## Load Server
      tryCatch(Server(id = pageid), error = function(e) e)
      
    } else {    
      ## Method 1:
      output$page <- renderUI(
        tags$div(id = "interimpage",
                 tagList(              # 404 if no file with that name
                   fluidRow(
                     column(5,
                            HTML("<h2>404 Not Found Error:</h2><p>That URL doesn't exist. Use the",
                                 "menu above to navigate to the page you were looking for.</p>")
                     )
                   )
                 )
        ))

    }
  })
  
  ##############################################################################3
  ######### Load Selected Page #################################################
  ##############################################################################3
  
  ## Change if Menu Selected
  observeEvent(input$tab,{
    updateQueryString(
      queryString = isolate(session$clientData$url_search) %>%
        param_set(key = c("page"),
                  value = c(input$tab)),
      mode = c("push"),
      session = getDefaultReactiveDomain()
    )

  })


  # Set this to "force" instead of TRUE for testing locally (without Shiny Server)
  session$allowReconnect(TRUE)
  
})