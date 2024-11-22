sig Node {
	adj : set Node
}

pred inv4{
all n : Node | n.adj = Node

all n1, n2 : Node | n2 in n1.adj


all n : Node | n.adj = Node - n
}