sig Node {
	adj : set Node
}

pred inv4{
all n:Node | Node-n in n.adj
}