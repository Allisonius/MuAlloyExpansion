sig Node {
	adj : set Node
}

pred inv4{
all x: Node | Node in x.*adj
}