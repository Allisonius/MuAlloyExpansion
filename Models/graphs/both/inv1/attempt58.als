sig Node {
	adj : set Node
}

pred inv1{
all n: Node | one m : Node | n.adj = m iff m.adj = n
}