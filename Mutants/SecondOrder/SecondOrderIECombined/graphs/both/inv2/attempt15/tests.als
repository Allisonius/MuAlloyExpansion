pred test0{
some disj Node0: Node {
Node = Node0
adj = Node0->Node0
inv2[]
}
}

run test0

pred test1{
some disj Node0: Node {
Node = Node0
no adj
inv2[]
}
}

run test1

pred test2{
some disj Node1, Node0, Node2: Node {
Node = Node0 + Node1 + Node2
adj = Node1->Node2 + Node2->Node1
inv2[]
}
}

run test2

pred test3{
some disj Node1, Node0, Node2: Node {
Node = Node0 + Node1 + Node2
adj = Node0->Node1 + Node0->Node2 + Node1->Node0 + Node1->Node2 + Node2->Node0 + Node2->Node1
inv2[]
}
}

run test3

