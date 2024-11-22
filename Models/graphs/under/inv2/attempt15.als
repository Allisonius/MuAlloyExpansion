sig Node {
	adj : set Node
}

pred inv2{
all n1:Node | some n2:Node | n2 in n1.adj implies n1 not in n2.adj
}