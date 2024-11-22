sig Node {
	adj : set Node
}

pred inv7{
no Node or one n: Node | n.*adj = Node
}