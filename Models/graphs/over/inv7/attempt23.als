sig Node {
	adj : set Node
}

pred inv7{
all n : Node | (some n.adj) and (Node = (n.^adj))
}