sig Node {
	adj : set Node
}

pred inv6{
lone  Node  or  Node in (Node.adj  + adj.Node)
}