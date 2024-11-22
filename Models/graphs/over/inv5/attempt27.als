sig Node {
	adj : set Node
}

pred inv5{
all a:Node | a.next not in a
}