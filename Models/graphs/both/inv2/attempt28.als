sig Node {
	adj : set Node
}

pred inv2{
all n1:Node | n1.adj != adj.n1
}