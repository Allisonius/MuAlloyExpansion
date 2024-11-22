sig Node {
	adj : set Node
}

pred inv7{
all n:Node | n in n.~adj
}