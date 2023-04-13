UI <- function(id = pageid) {
  
  ns <- NS(id)
  
  tagList(
    h1("Report 1")
  )
}


Server <- function(id = pageid) {
  moduleServer(
    id,
    function(input, output, session) {
      
      
    }
  )
}