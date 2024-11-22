sig Node {
	adj : set Node
}

pred inv6{
all x, y: Node | x in y.^(adj) or x in adj.y or x = y
}