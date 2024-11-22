sig Node {
	adj : set Node
}

pred inv1{
all n: Node | n not in n.adj and n in n.adj.adj
}