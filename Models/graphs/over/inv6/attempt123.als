sig Node {
	adj : set Node
}

pred inv6{
all x, y : Node | x->y in adj or y->x in adj
}