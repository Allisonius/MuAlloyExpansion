sig Node {
	adj : set Node
}

pred inv4{
Node in (Node.adj + adj.Node)
}