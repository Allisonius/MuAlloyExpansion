pred test0{
some disj Node0: Node {
Node = Node0
no adj
}
}

run test0

pred test1{
some disj Node1, Node0: Node {
Node = Node0 + Node1
adj = Node0->Node0 + Node1->Node1
inv4[]
}
}

run test1

pred test2{
some disj Node1, Node0: Node {
Node = Node0 + Node1
no adj
}
}

run test2

pred test3{
some disj Node1, Node0: Node {
Node = Node0 + Node1
adj = Node1->Node1
inv4[]
}
}

run test3

pred test4{
some disj Node1, Node0: Node {
Node = Node0 + Node1
adj = Node1->Node0 + Node1->Node1
}
}

run test4

pred test5{
some disj Node1, Node0: Node {
Node = Node0 + Node1
adj = Node0->Node1 + Node1->Node0 + Node1->Node1
inv4[]
}
}

run test5

pred test6{
some disj Node0: Node {
Node = Node0
adj = Node0->Node0
inv4[]
}
}

run test6

