sig Node {
	adj : set Node
}

pred inv4{
all disj a,b : Node | a in b.^adj
}