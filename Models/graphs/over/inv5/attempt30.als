sig Node {
	adj : set Node
}

pred inv5{
all x, y, z : Node | x->y in adj implies not y->x in adj
}