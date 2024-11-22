sig Node {
	adj : set Node
}

pred inv4{
all a,b:Node | b in a.^adj
}