sig Node {
	adj : set Node
}

pred inv6{
all x, y : Node | Node in x.^adj + x + x.^~adj
}