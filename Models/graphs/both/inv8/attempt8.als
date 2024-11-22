sig Node {
	adj : set Node
}

pred inv8{
all n1, n2, n3: Node | n1 in n2.adj and n2 in n3.adj implies n3 in n1.adj
}