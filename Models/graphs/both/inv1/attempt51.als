sig Node {
	adj : set Node
}

pred inv1{
all disj n, m: Node | n.adj in m iff m.adj in n
}