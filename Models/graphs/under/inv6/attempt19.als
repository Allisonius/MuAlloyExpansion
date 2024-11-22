sig Node {
	adj : set Node
}

pred inv6{
not lone Node implies  Node in (Node.adj  + adj.Node)
}