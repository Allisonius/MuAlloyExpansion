sig Node {
	adj : set Node
}

pred inv7{
all n:Node | Node-n in n.(^adj + ^~adj)
}