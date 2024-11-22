sig Node {
	adj : set Node
}

pred inv6{
all  n1:Node | Node in (n1.adj +adj.n1)
}