sig Node {
	adj : set Node
}

pred inv1{
all n: Node | one m : Node | m.adj = n
all n: Node | one m : Node | n.adj = m
}