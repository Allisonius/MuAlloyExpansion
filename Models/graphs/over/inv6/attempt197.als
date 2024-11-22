sig Node {
	adj : set Node
}

pred inv6{
all n:Node, x:Node| (n in x.adj or n in x.~adj)&& (x in n.adj || x in n.~adj)
}