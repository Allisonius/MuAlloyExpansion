sig Node {
	adj : set Node
}

pred inv2{
all n : Node | n not in n.adj
}