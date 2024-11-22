sig Node {
	adj : set Node
}

pred inv4{
all a:Node,b:Node | a in a.^adj implies a->b in adj
}