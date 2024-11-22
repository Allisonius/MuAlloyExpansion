sig Node {
	adj : set Node
}

pred inv8{
all e1, e3 : Node | e1.*adj in e1.adj
}