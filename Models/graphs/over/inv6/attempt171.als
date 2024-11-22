sig Node {
	adj : set Node
}

pred inv6{
all e1, e2 : Node | e2 in e1.*adj or e2 in *adj.e1
}