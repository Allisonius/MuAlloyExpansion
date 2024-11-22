sig Node {
	adj : set Node
}

pred inv7{
all x, y: Node | x in y.^(adj) or x in adj.y
}