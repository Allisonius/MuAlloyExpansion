sig Node {
	adj : set Node
}

pred inv1{
all disj n,m: Node | n.adj = m iff m.adj = n
}