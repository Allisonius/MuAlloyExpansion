sig Node {
	adj : set Node
}

pred inv4{
all disj x,y : Node | x in y.^adj
}