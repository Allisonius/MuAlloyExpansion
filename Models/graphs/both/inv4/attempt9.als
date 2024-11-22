sig Node {
	adj : set Node
}

pred inv4{
all a:Node | a in a.^adj and not a->a in adj
}