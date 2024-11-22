sig Node {
	adj : set Node
}

pred inv2{
all n, n1 : Node | n->n1 in adj iff n1->n not in adj
}