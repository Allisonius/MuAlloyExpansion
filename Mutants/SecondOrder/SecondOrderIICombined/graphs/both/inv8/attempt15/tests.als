pred test0{
some disj Node1, Node0, Node2: Node {
Node = Node0 + Node1 + Node2
adj = Node1->Node0 + Node2->Node0 + Node2->Node1 + Node2->Node2
inv8[]
}
}

run test0

pred test1{
some disj Node1, Node0, Node2: Node {
Node = Node0 + Node1 + Node2
adj = Node0->Node1 + Node0->Node2 + Node1->Node1 + Node2->Node0 + Node2->Node2
inv8[]
}
}

run test1

pred test2{
some disj Node1, Node0, Node2: Node {
Node = Node0 + Node1 + Node2
adj = Node0->Node1 + Node0->Node2 + Node1->Node1 + Node2->Node2
inv8[]
}
}

run test2

pred test3{
some disj Node1, Node0, Node2: Node {
Node = Node0 + Node1 + Node2
adj = Node1->Node2 + Node2->Node0 + Node2->Node2
inv8[]
}
}

run test3

pred test4{
some disj Node1, Node0, Node2: Node {
Node = Node0 + Node1 + Node2
adj = Node0->Node1 + Node0->Node2 + Node1->Node1 + Node1->Node2 + Node2->Node0 + Node2->Node1
inv8[]
}
}

run test4

pred test5{
some disj Node1, Node0, Node2: Node {
Node = Node0 + Node1 + Node2
adj = Node0->Node1 + Node0->Node2 + Node1->Node0 + Node1->Node1 + Node2->Node0 + Node2->Node2
inv8[]
}
}

run test5

pred test6{
some disj Node1, Node0, Node2: Node {
Node = Node0 + Node1 + Node2
adj = Node1->Node0 + Node2->Node0 + Node2->Node1
inv8[]
}
}

run test6

pred test7{
some disj Node1, Node0, Node2: Node {
Node = Node0 + Node1 + Node2
adj = Node0->Node1 + Node0->Node2 + Node1->Node1 + Node2->Node0
inv8[]
}
}

run test7

