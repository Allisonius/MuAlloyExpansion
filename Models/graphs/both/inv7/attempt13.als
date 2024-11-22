sig Node {
	adj : set Node
}

pred inv7{
some { n: Node | n.*adj = Node }
}