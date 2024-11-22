sig Node {
	adj : set Node
}

pred inv6{
all disj n,n1:Node | n in n1.^adj or n1 in n.^adj
}