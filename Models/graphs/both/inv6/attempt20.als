sig Node {
	adj : set Node
}

pred inv6{
all n : Node | n.(adj + ~adj) in Node - n
}