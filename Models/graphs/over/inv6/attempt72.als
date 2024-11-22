sig Node {
	adj : set Node
}

pred inv6{
all n:Node | Node = n.^(adj + ~adj)
}