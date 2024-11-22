sig Node {
	adj : set Node
}

pred inv1{
all n: Node | lone m : Node | m.adj = n
}