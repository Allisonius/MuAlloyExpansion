sig Node {
	adj : set Node
}

pred inv8{
all a,b,c:Node | a->b in adj and a->c in adj implies a->b in adj
}