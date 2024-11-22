sig Node {
	adj : set Node
}

pred inv1{
all disj n,m: Node | n.adj = m => m.adj = n
}