sig Node {
	adj : set Node
}

pred inv1{
all n1: Node | lone n2: Node | n1 in n2.adj iff n1.adj in n2
}