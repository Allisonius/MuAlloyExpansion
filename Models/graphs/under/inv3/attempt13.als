sig Node {
	adj : set Node
}

pred inv3{
no p: Node | p in p.~adj
}