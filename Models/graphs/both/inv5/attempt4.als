sig Node {
	adj : set Node
}

pred inv5{
all n : Node | n.adj not in n
}