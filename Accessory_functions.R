shape_to_ggplot <- function(shape){
  require(broom)
  gg_data <- tidy(shape)
  data <- slot(shape, "data")
  shape[["polyID"]] <- sapply(slot(shape, "polygons"), function(x) slot(x, "ID"))
  gg_data <- merge(gg_data, shape, by.x="id", by.y="polyID")
  return(gg_data)
}
