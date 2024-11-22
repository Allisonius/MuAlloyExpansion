sig Node {
	adj : set Node
}

pred inv5{
all n: Node | n->n in adj
}