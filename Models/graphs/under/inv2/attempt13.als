sig Node {
	adj : set Node
}

pred inv2{
all n1: Node, n2: Node | n1 -> n2 in adj implies n2 -> n2 not in adj
}