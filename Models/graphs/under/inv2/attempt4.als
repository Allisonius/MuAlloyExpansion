sig Node {
	adj : set Node
}

pred inv2{
all n:Node, n2:n.adj | not n in n2
}