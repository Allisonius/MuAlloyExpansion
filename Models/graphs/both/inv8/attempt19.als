sig Node {
	adj : set Node
}

pred inv8{
inv5
all  a,b,c : Node | (a!= b and  a !=c and b!=c) => (a in adj.b and c in b.adj) => c in a.adj
}

pred inv5{
no iden & adj

all n : Node | n not in n.adj
}