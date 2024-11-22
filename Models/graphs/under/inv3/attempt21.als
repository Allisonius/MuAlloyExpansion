sig Node {
	adj : set Node
}

pred inv3{
all v1, v2 : Node | v1->v2 in adj implies not v2->v1 in adj
}