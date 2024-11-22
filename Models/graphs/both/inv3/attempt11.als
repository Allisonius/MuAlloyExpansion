sig Node {
	adj : set Node
}

pred inv3{
some a,b : Node | a -> a in adj
}