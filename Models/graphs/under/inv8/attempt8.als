sig Node {
	adj : set Node
}

pred inv8{
all e1, e2, e3 : Node | e1 -> e2 in adj and e2 -> e3 in adj implies e1 -> e2 in adj
}