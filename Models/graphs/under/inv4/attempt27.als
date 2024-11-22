sig Node {
	adj : set Node
}

pred inv4{
all a,b : Node | a in b.^adj
}