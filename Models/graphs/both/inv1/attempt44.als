sig Node {
	adj : set Node
}

pred inv1{
all a,b:Node | a->b in adj implies b->a not in adj
}