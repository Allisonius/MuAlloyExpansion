pred test0{
some disj Node1, Node0: Node {
Node = Node0 + Node1
adj = Node0->Node1 + Node1->Node0
inv4[]
}
}

run test0

pred test1{
some disj Node1, Node0, Node2: Node {
Node = Node0 + Node1 + Node2
adj = Node0->Node2 + Node1->Node0 + Node2->Node1
inv4[]
}
}

run test1

pred test2{
some disj Node0: Node {
Node = Node0
no adj
inv4[]
}
}

run test2

