
library(igraph)


# Create a graph with 8 vertices
cube <- make_empty_graph(8)

# Add edges for the cube
add_edges(cube, c(1, 2, 2, 3, 3, 4, 4, 1,
                  5, 6, 6, 7, 7, 8, 8, 5,
                  1, 5, 2, 6, 3, 7, 4, 8))

# Create a layout for the cube's vertices
layout <- matrix(c(-1, -1, -1,
                   1, -1, -1,
                   1,  1, -1,
                   -1,  1, -1,
                   -1, -1,  1,
                   1, -1,  1,
                   1,  1,  1,
                   -1,  1,  1), ncol = 3, byrow = TRUE)

plot.igraph(cube,
            layout=layout,
            )
