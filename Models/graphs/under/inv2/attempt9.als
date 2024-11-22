sig Node {
	adj : set Node
}

pred inv2{
not some disj n1, n2:Node | n1->n2 in adj and n2->n1 in adj
}