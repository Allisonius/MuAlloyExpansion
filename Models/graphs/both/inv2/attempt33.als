sig Node {
	adj : set Node
}

pred inv2{
some disj n1, n2: Node | n1 in n2.adj and n2 !in n1.adj
}