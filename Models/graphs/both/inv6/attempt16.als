sig Node {
	adj : set Node
}

pred inv6{
some Node.adj or some Node.~adj
}