sig Node {
	adj : set Node
}

pred inv6{
some n:Node |Node in  n.(adj + ~adj)
}