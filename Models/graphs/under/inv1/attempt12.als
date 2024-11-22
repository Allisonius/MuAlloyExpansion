sig Node {
	adj : set Node
}

pred inv1{
all n: Node | some m: Node | n.adj = m implies m.adj = n
}