sig Node {
	adj : set Node
}

pred inv1{
no adj
all n : Node, n2 : n.adj | n in n2.adj
}