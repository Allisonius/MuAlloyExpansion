sig Node {
	adj : set Node
}

pred inv6{
all disj n,x:Node| n in x.^adj || x in n.^adj
}