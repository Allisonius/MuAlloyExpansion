sig Node {
	adj : set Node
}

pred inv5{
all n1: Node | not (n1 in n1.^adj)
}