sig Node {
	adj : set Node
}

pred inv6{
all disj n,x:Node| n in x.^adj || n in x.~^adj
}