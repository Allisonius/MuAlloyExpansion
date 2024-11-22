sig Node {
	adj : set Node
}

pred inv6{
some adj implies   Node in (Node.adj  + adj.Node)
}