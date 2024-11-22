sig Node {
	adj : set Node
}

pred inv1{
all n,m: Node | n.adj in m => m.adj in n
}