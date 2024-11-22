sig Node {
	adj : set Node
}

pred inv1{
all n:Node | n in Node.adj or n in adj.Node
}