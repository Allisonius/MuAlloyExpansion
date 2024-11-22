sig Node {
	adj : set Node
}

pred inv2{
no n : Node, n2 : n.adj | n in n2.adj
not inv1
}

pred inv1{
all n : Node, n2 : n.adj | n in n2.adj
}