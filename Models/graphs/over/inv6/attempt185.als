sig Node {
	adj : set Node
}

pred inv6{
all n : Node | n.adj != n and (some n.adj or some n.~adj)
}