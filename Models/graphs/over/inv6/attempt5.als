sig Node {
	adj : set Node
}

pred inv6{
(Node -> Node - iden) in ^adj
}