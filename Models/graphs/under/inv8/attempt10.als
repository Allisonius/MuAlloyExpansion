sig Node {
	adj : set Node
}

pred inv8{
all  a,b,c : Node | (a!= b and  a !=c) => (a in adj.b and c in b.adj) => c in a.adj
}