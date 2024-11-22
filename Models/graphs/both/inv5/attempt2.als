sig Node {
	adj : set Node
}

pred inv5{
adj.~adj not in iden
}