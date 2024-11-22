sig Node {
	adj : set Node
}

pred inv7{
one Node or (Node = Node.(^adj))
}