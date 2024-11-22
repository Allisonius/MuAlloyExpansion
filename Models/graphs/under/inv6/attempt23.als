sig Node {
	adj : set Node
}

pred inv6{
all n:Node | some n.*adj + n.^~adj
}