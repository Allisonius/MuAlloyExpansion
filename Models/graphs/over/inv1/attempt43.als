sig Node {
	adj : set Node
}

pred inv1{
all v1, v2 : Node | v1->v2 in adj implies v2->v1 in adj
no adj & adj
}