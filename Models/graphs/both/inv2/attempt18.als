sig Node {
	adj : set Node
}

pred inv2{
all n : Node | some adj.n
}