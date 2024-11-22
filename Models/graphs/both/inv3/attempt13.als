sig Node {
	adj : set Node
}

pred inv3{
some n : Node | no n.adj & adj.n
}