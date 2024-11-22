sig Node {
	adj : set Node
}

pred inv6{
some adj
all n : Node | Node in n.^(adj + ~adj)
}