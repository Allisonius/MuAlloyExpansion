sig Node {
	adj : set Node
}

pred inv1{
all disj n,m: Node | n.adj in m implies m.adj in n
}