sig Node {
	adj : set Node
}

pred inv4{
all a:Node | a in adj.a
}