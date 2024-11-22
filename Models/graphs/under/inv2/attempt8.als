sig Node {
	adj : set Node
}

pred inv2{
all disj n1, n2 : Node | n1->n2 in adj implies not n2->n1 in adj
}