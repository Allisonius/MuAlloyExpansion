sig Node {
	adj : set Node
}

pred inv6{
inv1 and inv4
}

pred inv1{
~adj = adj
}

pred inv4{
adj = Node -> Node
}