sig Node {
	adj : set Node
}

pred inv2{
all n:Node | not n.adj in adj.n
}