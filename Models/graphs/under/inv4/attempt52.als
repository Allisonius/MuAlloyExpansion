sig Node {
	adj : set Node
}

pred inv4{
all x: Node | (Node - x) in x.^(adj)
}