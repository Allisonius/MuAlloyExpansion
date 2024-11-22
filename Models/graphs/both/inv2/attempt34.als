sig Node {
	adj : set Node
}

pred inv2{
all disj n1,n2: Node | n1 in n2.adj iff n2 not in n1.adj
}