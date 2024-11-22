sig Node {
	adj : set Node
}

pred inv6{
all disj x,y : Node | x in y.^adj
}