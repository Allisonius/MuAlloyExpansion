sig Node {
	adj : set Node
}

pred inv8{
all n, n2 : Node | some n1 : Node | n->n1 in adj and n1->n2 in adj => n->n2 in adj
}