sig Node {
	adj : set Node
}

pred inv2{
all n : Node | no adj:>n
}