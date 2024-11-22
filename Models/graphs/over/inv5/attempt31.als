sig Node {
	adj : set Node
}

pred inv5{
all n1,n2: Node | not ((n2 in n1.adj) and (n1 in n2.^adj))
}