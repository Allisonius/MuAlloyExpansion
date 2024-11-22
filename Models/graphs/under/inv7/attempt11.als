sig Node {
	adj : set Node
}

pred inv7{
no Node or (some {n: Node | n.*adj = Node})
}