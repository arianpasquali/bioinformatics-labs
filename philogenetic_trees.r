	
distances_data = c(0,184,222,177,216,231,
					184,0,45,123,128,200,
					222,45,0,129,121,203,
					177,123,129,0,46,83,
					216,128,121,46,0,83,
					231,200,203,83,83,0)

dim(distances_data)=c(6,6)			
colnames(distances_data)=c('A','B','C','D','E','F')
rownames(distances_data)=colnames(distances_data)
distances_matrix = as.dist(distances_data)

require(graphics); require(grDevices)
x  <- as.matrix(distances_matrix)
rc <- rainbow(nrow(x), start = 0, end = .3)
cc <- rainbow(ncol(x), start = 0, end = .3)

## "heat map for the distance matrix"
heatmap(x, Rowv = NA, Colv = NA, scale = "column",
        main = "heatmap")

## "print tree using hierarchical clustering"
plot(hclust(distances_matrix),main="Philogenetic tree")


