sig Node {
	adj : set Node
}

pred inv1{
all disj n,n1 : Node | n in n1.adj.~adj
}