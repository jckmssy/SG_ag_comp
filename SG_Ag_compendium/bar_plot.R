library(highcharter)

#high chart options
hcoptslang <- getOption("highcharter.lang")
hcoptslang$thousandsSep <- ","
hcoptslang$numericSymbols <- " "
options(highcharter.lang = hcoptslang)



theme <- hc_theme(
  colors = c("#0065bd",
             "#002d54",
             "#5eb135",
             "#017878",
             "#f47738",
             "#e5007e"
  ), 
  chart = list(
    backgroundColor = NULL
  ),
  title = list(
    style = list(
      color = "black",
      fontFamily = "Roboto",
      fontSize= "20px"
    )
  ),
  subtitle = list(
    style = list(
      color = "black",
      fontFamily = "Roboto"
    )
  ),
  legend = list(
    itemStyle = list(
      fontFamily = "Roboto",
      fontSize= "20px",
      color = "black"
    )
  ),
  itemHoverStyle = list(
    color = "black",
    fontFamily = "Roboto",
    fontSize= "30px"
  ),
  
  
  
  tooltip = list(
    style=list(
      color = "black",
      fontFamily = "Roboto",
      fontSize= "18px",
      fontWeight = "bold")
  ))


bar_chart_area <- function(plot_data) {
  
 
  hchart(plot_data, "column", 
       hcaes(
         x = `Main farm type`, 
         y = `Area (ha)`,), 
       style = list(fontFamily = "Roboto"))%>%   
  hc_yAxis( 
    labels = list(style = list(color =  "#000000", fontSize = "20px", fontFamily = "Roboto"), 
                  format = "{value:,.0f}"),
    title = list(text = "Hectares",
                 style = list(color = "#000000", fontSize = "20px", fontFamily = "Roboto"))) %>% 
  hc_xAxis(
    labels = list(style = list(color =  "#000000", fontSize = "20px", fontFamily = "Roboto")),
    title = list(text = "", style = list(color = "#000000", fontSize = "20px", fontFamily = "Roboto")),
    type = "category") %>% 
  hc_legend(align = "left",
            alignColums = FALSE,
            layout = "horizontal") %>% 
  hc_tooltip(
    pointFormat = "{point.y:,.1f}")
  
}

bar_chart_holdings <- function(plot_data) {
  
  hchart(plot_data, "column", 
         hcaes(
           x = `Main farm type`, 
           y = Holdings,), 
         style = list(fontFamily = "Roboto"))%>%   
    hc_yAxis( 
      labels = list(style = list(color =  "#000000", fontSize = "20px", fontFamily = "Roboto"), 
                    format = "{value:,.0f}"),
      title = list(text = "Number of holdings",
                   style = list(color = "#000000", fontSize = "20px", fontFamily = "Roboto"))) %>% 
    hc_xAxis(
      labels = list(style = list(color =  "#000000", fontSize = "20px", fontFamily = "Roboto")),
      title = list(text = "", style = list(color = "#000000", fontSize = "20px", fontFamily = "Roboto")),
      type = "category") %>% 
    hc_legend(align = "left",
              alignColums = FALSE,
              layout = "horizontal") %>% 
    hc_tooltip(
      pointFormat = "{point.y:,.1f}")
  
}
bar_chart_total_SO <- function(plot_data) {
  
  hchart(plot_data, "column", 
         hcaes(
           x = `Main farm type`, 
           y = `Total from Standard Outputs (£)`,), 
         style = list(fontFamily = "Roboto"))%>%   
    hc_yAxis( 
      labels = list(style = list(color =  "#000000", fontSize = "20px", fontFamily = "Roboto"), 
                    format = "{value:,.0f}"),
      title = list(text = "Total standard output (£)",
                   style = list(color = "#000000", fontSize = "20px", fontFamily = "Roboto"))) %>% 
    hc_xAxis(
      labels = list(style = list(color =  "#000000", fontSize = "20px", fontFamily = "Roboto")),
      title = list(text = "", style = list(color = "#000000", fontSize = "20px", fontFamily = "Roboto")),
      type = "category") %>% 
    hc_legend(align = "left",
              alignColums = FALSE,
              layout = "horizontal") %>% 
    hc_tooltip(
      pointFormat = "{point.y:,.1f}")
  
}

bar_chart_average_SO <- function(plot_data) {
  hchart(plot_data, "column", 
         hcaes(
           x = `Main farm type`, 
           y = `Average standard outputs per holding (£)`,), 
         style = list(fontFamily = "Roboto"))%>%   
    hc_yAxis( 
      labels = list(style = list(color =  "#000000", fontSize = "20px", fontFamily = "Roboto"), 
                    format = "{value:,.0f}"),
      title = list(text = "Average standard output (£)",
                   style = list(color = "#000000", fontSize = "20px", fontFamily = "Roboto"))) %>% 
    hc_xAxis(
      labels = list(style = list(color =  "#000000", fontSize = "20px", fontFamily = "Roboto")),
      title = list(text = "", style = list(color = "#000000", fontSize = "20px", fontFamily = "Roboto")),
      type = "category") %>% 
    hc_legend(align = "left",
              alignColums = FALSE,
              layout = "horizontal") %>% 
    hc_tooltip(
      pointFormat = "{point.y:,.1f}")
}
