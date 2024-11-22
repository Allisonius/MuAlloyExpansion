sig Node {
	adj : set Node
}

pred inv1{
all n: Node | lone m : Node | n.adj = m implies m.adj = n
}