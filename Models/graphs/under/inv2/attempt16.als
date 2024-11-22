sig Node {
	adj : set Node
}

pred inv2{
all disj n1,n2: Node | n1 in n2.adj implies n2 not in n1.adj and n2 in n1.adj implies n1 not in n2.adj
}