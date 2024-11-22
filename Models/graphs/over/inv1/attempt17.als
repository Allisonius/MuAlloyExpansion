sig Node {
	adj : set Node
}

pred inv1{
all a,b:Node | b->a in adj
}