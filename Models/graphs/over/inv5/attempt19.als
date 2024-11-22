sig Node {
	adj : set Node
}

pred inv5{
all a:Node | a not in a.^adj
}