sig Node {
	adj : set Node
}

pred inv3{
all n1:Node| some n2:Node | n1->n2 in adj implies n2->n1 not in adj
}