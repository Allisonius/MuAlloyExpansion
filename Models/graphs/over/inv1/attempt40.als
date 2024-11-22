sig Node {
	adj : set Node
}

pred inv1{
all n : Node | all ad : n.adj | n in ad.adj and ad.adj in n
}