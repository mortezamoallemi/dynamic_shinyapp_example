UI <- function(id = pagename) {
  
  ns <- NS(id)
  
  tagList(div(style = "padding:25px;  background-color:#A5A5DE;",
              
              # h3("Network Snapshot:"),
              fluidRow(
                # p(strong("Select Toolbox"), 
                #   style = "font-size: 150%; color:white"),
                
              )
  )
  )
}




Server <- function(id = pagename) {
  moduleServer(
    id,
    function(input, output, session) {
      
      
      ##############################################################################3
      ######### Read and Prepare Data ############################################
      ##############################################################################3
      
      update_query <- function(toolbox){
        updateQueryString(
          queryString = isolate(session$clientData$url_search) %>%
            param_set(key = c("page"), 
                      value = c("home")),
          mode = c("push"),
          session = getDefaultReactiveDomain()
        )
      }
      
      observeEvent(input$`Network Structure`,{
        update_query("Network Structure")
      })
      
      observeEvent(input$`Inputs and Assumptions`,{
        update_query("Inputs and Assumptions")
      })
      
      observeEvent(input$`Technical Tools`,{
        update_query("Technical Tools")
      })
      
      observeEvent(input$`COVID 19`,{
        update_query("COVID 19")
      })
      
      observeEvent(input$`Load Snapshot`,{
        update_query("Load Snapshot")
      })
      

      observeEvent(input$`Managerial Analyses`,{
        update_query("Managerial Analyses")
      })
      
      observeEvent(input$`Forecasting Results`,{
        update_query("Forecasting Results")
      })
      
      observeEvent(input$`SCADA Interface`,{
        update_query("SCADA Interface")
      })
      
      
    }
  )
}
