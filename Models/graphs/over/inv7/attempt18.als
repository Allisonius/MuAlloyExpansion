sig Node {
	adj : set Node
}

pred inv7{
all a:Node , b:Node| b in a.^adj
}