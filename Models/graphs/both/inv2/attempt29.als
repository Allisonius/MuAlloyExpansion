sig Node {
	adj : set Node
}

pred inv2{
all n:Node, n2:n.adj | n in n2.adj
}