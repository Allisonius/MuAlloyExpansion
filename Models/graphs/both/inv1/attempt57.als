sig Node {
	adj : set Node
}

pred inv1{
all n: Node | all m: Node | n.adj = m iff m.adj = m
}