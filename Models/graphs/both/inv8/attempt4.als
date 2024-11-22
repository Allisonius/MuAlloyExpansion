sig Node {
	adj : set Node
}

pred inv8{
inv5
}

pred inv5{
no iden & adj

all n : Node | n not in n.adj
}