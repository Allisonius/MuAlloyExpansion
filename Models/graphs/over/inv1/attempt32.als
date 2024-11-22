sig Node {
	adj : set Node
}

pred inv1{
all disj n, n1 : Node | n1 in n.adj && n in n1.adj
}