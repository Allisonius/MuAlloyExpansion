sig Node {
	adj : set Node
}

pred inv4{
all disj n, m: Node | n->m in adj
}