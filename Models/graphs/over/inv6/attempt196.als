sig Node {
	adj : set Node
}

pred inv6{
all n1:Node | ((^adj.n1:>Node) + (n1.^adj:>Node)) = Node and some n1.adj:>n1
}