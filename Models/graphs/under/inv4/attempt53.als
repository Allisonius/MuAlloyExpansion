sig Node {
	adj : set Node
}

pred inv4{
all disj n1, n2 : Node | n2 in n1.^adj
}