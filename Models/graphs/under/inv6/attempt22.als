sig Node {
	adj : set Node
}

pred inv6{
one Node or (Node = (Node.(^adj) + Node.(^(~adj))))
}