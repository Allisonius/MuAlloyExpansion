sig Node {
	adj : set Node
}

pred inv5{
all x, y : Node | x->y in adj implies not y->x in adj
}