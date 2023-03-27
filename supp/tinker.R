# Load e.biface image
library(here)
library(colordistance)
e.biface <- loadImage("images/78.png", 
                    CIELab = FALSE,
                    lower = FALSE,
                    upper = FALSE)

# plot in CIE Lab color space
plotPixels(e.biface,
           color.space = "rgb", 
           n = 10000,
           main = "Pixels (RGB Color Space)")

# get histogram clusters
e.biface.hist <- getImageHist(e.biface,
                            bins = 3,
                            sample.size = TRUE,
                            lower = FALSE,
                            upper = FALSE,
                            hsf = FALSE,
                            title = "Histogram color clusters",
                            ylab="Proportion of image")

# plot clusters in 3D space
scatter3dclusters(e.biface.hist, 
                  scaling = 20, 
                  opacity = 0.99, 
                  y.margin.add = 1,
                  type = "h", 
                  angle = 50, 
                  main = "Clusters (RGB)")

