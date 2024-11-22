sig Node {
	adj : set Node
}

pred inv1{
all n: Node | n.adj in Node and n in n.adj.adj
}