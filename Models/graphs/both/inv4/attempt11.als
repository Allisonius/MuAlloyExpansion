sig Node {
	adj : set Node
}

pred inv4{
all n : Node | n.adj = Node - n

all disj n1,n2 : Node | n1 in adj.n2
}