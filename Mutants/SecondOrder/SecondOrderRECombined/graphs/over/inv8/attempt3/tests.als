pred test0{
some disj Node0: Node {
Node = Node0
adj = Node0->Node0
inv8[]
}
}

run test0

pred test1{
some disj Node1, Node0, Node2: Node {
Node = Node0 + Node1 + Node2
adj = Node2->Node1
inv8[]
}
}

run test1

