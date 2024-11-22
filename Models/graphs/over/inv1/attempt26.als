sig Node {
	adj : set Node
}

pred inv1{
all n:Node, n2:n.adj | n in n2
}