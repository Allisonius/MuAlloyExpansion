sig Node {
	adj : set Node
}

pred inv1{
~adj.adj in iden and iden in adj.~adj
}