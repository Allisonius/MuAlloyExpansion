sig Node {
	adj : set Node
}

pred inv6{
all x, y : Node | x->y in adj iff y->x in adj
}