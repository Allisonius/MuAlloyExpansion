sig Node {
	adj : set Node
}

pred inv7{
all n:Node | Node-n = n.^adj + n.^~adj
}