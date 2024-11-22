sig Node {
	adj : set Node
}

pred inv7{
all a,b:Node | a->b in adj
}