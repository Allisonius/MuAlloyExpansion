sig Node {
	adj : set Node
}

pred inv6{
all n : Node | Node - n = n.^(adj + ~adj)
}