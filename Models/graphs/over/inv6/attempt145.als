sig Node {
	adj : set Node
}

pred inv6{
all a, b : Node | a in b.^adj or b in a.^adj
}