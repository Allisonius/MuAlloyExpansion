sig Node {
	adj : set Node
}

pred inv1{
~adj.adj in iden and adj.~adj in iden
}