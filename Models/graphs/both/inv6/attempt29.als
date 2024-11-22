sig Node {
	adj : set Node
}

pred inv6{
all x: Node | x in Node.^(adj) or x in adj.Node
}