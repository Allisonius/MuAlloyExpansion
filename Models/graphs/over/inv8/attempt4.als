sig Node {
	adj : set Node
}

pred inv8{
Node->Node.adj.adj in adj
}