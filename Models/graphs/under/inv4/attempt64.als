sig Node {
	adj : set Node
}

pred inv4{
all n1 : Node | no n2: Node | n2 not in n1.^(adj)
}