sig Node {
	adj : set Node
}

pred inv3{
all n : Node | n not in n.^adj

no (^adj & iden)

iden - ^adj != iden
}