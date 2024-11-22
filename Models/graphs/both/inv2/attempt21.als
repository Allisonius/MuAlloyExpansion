sig Node {
	adj : set Node
}

pred inv2{
all n:Node | adj.n not in n.adj
}