sig Node {
	adj : set Node
}

pred inv2{
all e1 : Node | no Node.adj & adj.Node
}