sig Node {
	adj : set Node
}

pred inv6{
all n : Node | all a : n.adj  | a in n.adj implies n in a.adj
}