sig Node {
	adj : set Node
}

pred inv1{
all n,m: Node | n.adj in m iff m.adj in n
}