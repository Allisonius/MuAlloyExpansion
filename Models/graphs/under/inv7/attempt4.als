sig Node {
	adj : set Node
}

pred inv7{
all n : Node | Node.adj in n.^adj
}