sig Node {
	adj : set Node
}

pred inv5{
no n1: Node | n1 in n1.^adj
}