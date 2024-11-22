sig Node {
	adj : set Node
}

pred inv1{
all n: Node | no n.adj or n in n.adj.adj
}