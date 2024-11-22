sig Node {
	adj : set Node
}

pred inv6{
all n1, n2 : Node | n1->n2 in adj => n2->n1 in adj
all n:Node | Node in n.*adj
}