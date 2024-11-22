sig Node {
	adj : set Node
}

pred inv3{
iden not in ^adj or iden in adj
}