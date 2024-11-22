sig Node {
	adj : set Node
}

pred inv7{
one n: Node | n.*adj = Node
}