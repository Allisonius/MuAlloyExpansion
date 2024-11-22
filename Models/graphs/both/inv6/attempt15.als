sig Node {
	adj : set Node
}

pred inv6{
Node = (Node.(^adj) + Node.(^(~adj)))
}