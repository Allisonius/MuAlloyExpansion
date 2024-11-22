sig Node {
	adj : set Node
}

pred inv2{
! inv1
}

pred inv1{
adj = ~adj
}