sig Node {
	adj : set Node
}

pred inv4{
all n1, n2: Node | n2 in n1.^(adj) and n2 not in n2.adj
}