sig Node {
	adj : set Node
}

pred inv5{
all a:Node | no a & a.^adj
}