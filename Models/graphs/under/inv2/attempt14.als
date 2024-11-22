sig Node {
	adj : set Node
}

pred inv2{
all disj n, n1 : Node | n->n1 in adj and n1->n in adj => n1 = n
}