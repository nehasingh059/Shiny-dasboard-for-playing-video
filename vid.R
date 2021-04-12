library(shiny)
library(shinyjs)
library(shinydashboard)

ui <-  dashboardPage(
  dashboardHeader(title=tags$a(href="https://www.datamatics.com/", target="_blank",
                               tags$img(src="logo.png", height = '36',width = '160', alt="Datamatics Global Services" )),titleWidth = 230),
  
  dashboardSidebar(
    sidebarMenu(
      menuItem("Banking", tabName = "Banking"),
      menuItem("Finance", tabName = "Finance"),
      menuItem("Marketing", tabName = "Marketing"),
      menuItem("Sales", tabName = "Sales"),
      menuItem("Supply Chain", tabName = "SupplyChain"),
      tags$footer(tags$div(href="https://www.datamatics.com/",
                           target="_blank",
                           "copyright@ DGSL. All rights reserved | Terms and Conditions",align = "left"),style = "
                                             position:absolute;
                                             bottom:0;
                                             width:0%;
                                             height:40px;   /* Height of the footer */
                                             color: white;
                                             padding: 2px;
                                             z-index: 1000;
                                             font-size:9px;")
    )
  ),
  
  dashboardBody(
    tags$head(tags$style(HTML(
      '.myClass {
        line-height: 45px;
        text-align: center;
        font-family: "Arial";
        padding: 0 15px;
        overflow: hidden;
        color: white;
        font-size: 40px;
        }
        '))),
    tags$script(HTML('
                       $(document).ready(function() {
                       $("header").find("nav").append(\'<span class="myClass"> Datamatics Global Services LTD </span>\');
                       })
                       ')),
    tags$head(tags$link(rel = "stylesheet", type = "text/css", href = "custom.css")
    ),
    tags$video(id="video2", type = "video/mp4",src = "SampleVideo_1280x720_1mb.mp4",width="500", height="350", controls = "controls"),
    tags$video(id="video3", type = "video/mp4",src = "SampleVideo_1280x720_1mb.mp4",width="510", height="350", controls = "controls"),
    tags$video(id="video4", type = "video/mp4",src = "SampleVideo_1280x720_1mb.mp4",width="500", height="350", controls = "controls"),
    tags$video(id="video5", type = "video/mp4",src = "SampleVideo_1280x720_1mb.mp4",width="510", height="350", controls = "controls")
    
  )
)
server <- function(input, output, session) {
  
}

shinyApp(ui, server)
