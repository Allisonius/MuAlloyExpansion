sig Node {
	adj : set Node
}

pred inv2{
all n, m : Node | n->m in adj iff m->n not in adj
}