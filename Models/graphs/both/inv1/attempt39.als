sig Node {
	adj : set Node
}

pred inv1{
all n,m: Node | n.adj = m iff m.adj = n
}