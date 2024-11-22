sig Node {
	adj : set Node
}

pred inv7{
all n:Node, x:Node| n in x.^adj && x in n.^adj
}