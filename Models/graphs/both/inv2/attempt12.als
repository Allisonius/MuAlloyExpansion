sig Node {
	adj : set Node
}

pred inv2{
adj not in adj & ~adj
}