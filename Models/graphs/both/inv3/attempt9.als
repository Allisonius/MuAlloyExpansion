sig Node {
	adj : set Node
}

pred inv3{
no n:Node | n not in n.^adj
}