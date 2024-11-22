sig Node {
	adj : set Node
}

pred inv2{
some n : Node | no adj.n
}