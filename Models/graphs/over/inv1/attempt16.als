sig Node {
	adj : set Node
}

pred inv1{
all n,m: Node | m in n.adj
}