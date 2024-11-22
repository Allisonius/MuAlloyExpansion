sig Node {
	adj : set Node
}

pred inv6{
all e1 : Node | (Node - e1) in (e1.^adj + ^adj.e1)
}