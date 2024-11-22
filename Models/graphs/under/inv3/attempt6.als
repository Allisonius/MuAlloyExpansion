sig Node {
	adj : set Node
}

pred inv3{
no n:Node | n in n.adj
}