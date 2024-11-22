sig Node {
	adj : set Node
}

pred inv1{
all n: Node | no n.adj or n not in n.adj and n in n.adj.adj
}