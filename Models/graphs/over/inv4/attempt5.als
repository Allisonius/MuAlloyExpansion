sig Node {
	adj : set Node
}

pred inv4{
all v : Node | no v.~adj + v
}