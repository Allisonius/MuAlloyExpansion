sig Node {
	adj : set Node
}

pred inv7{
all n1 : Node| n1 in n1.adj
}