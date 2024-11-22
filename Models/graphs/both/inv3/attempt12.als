sig Node {
	adj : set Node
}

pred inv3{
no n:Node | Node in n.*adj
}