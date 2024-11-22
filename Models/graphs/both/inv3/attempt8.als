sig Node {
	adj : set Node
}

pred inv3{
some a : Node | a -> a in adj
}