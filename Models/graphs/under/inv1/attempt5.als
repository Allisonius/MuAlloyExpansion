sig Node {
	adj : set Node
}

pred inv1{
some Node.adj implies some adj.Node
}