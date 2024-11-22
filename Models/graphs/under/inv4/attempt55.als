sig Node {
	adj : set Node
}

pred inv4{
all x : Node | x.adj - x = Node - x
}