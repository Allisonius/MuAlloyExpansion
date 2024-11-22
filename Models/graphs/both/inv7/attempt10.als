sig Node {
	adj : set Node
}

pred inv7{
lone n: Node | n.*adj = Node
}