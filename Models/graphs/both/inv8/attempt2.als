sig Node {
	adj : set Node
}

pred inv8{
all n : Node | n in adj.n.adj.adj
}