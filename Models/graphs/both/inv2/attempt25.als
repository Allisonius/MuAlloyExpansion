sig Node {
	adj : set Node
}

pred inv2{
all n : Node | n in n.adj.~adj
}