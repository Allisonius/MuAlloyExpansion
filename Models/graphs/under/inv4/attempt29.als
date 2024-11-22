sig Node {
	adj : set Node
}

pred inv4{
all x, y: Node | x in y.^(adj)
}