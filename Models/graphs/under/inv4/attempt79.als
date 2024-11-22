sig Node {
	adj : set Node
}

pred inv4{
all n:Node, x:Node| n in x.^adj && x in n.^adj
}