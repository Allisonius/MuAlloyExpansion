sig Node {
	adj : set Node
}

pred inv5{
all a:Node | not (a.adj=a)
}