sig Node {
	adj : set Node
}

pred inv2{
all x, y : Node | (x in ^adj.y) and (y in ^adj.x)
}