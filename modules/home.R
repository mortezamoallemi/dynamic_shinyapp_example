UI <- function(id = pagename) {
  
  ns <- NS(id)
  
  tagList(div(style = "padding:25px;  background-color:#A5A5DE;",
              
              h2("Dynamic ShinyApp Example"),
                p("This is an example of a dynamic ShinyApp where the pages areread from an external source, e.g. github repository. The benefit of this dynamicity is there is no need to deploy the app after each update, rather any update to the source file is refleted in 'shinyapps.io' just by refreshing the page."),
              p("The code for this app can be accessed here:"),
              tags$a(href="https://github.com/mortezamoallemi/dynamic_shinyapp_example", "App Github Repository")
              )
  )
}




Server <- function(id = pagename) {
  moduleServer(
    id,
    function(input, output, session) {
      
      
    }
  )
}
