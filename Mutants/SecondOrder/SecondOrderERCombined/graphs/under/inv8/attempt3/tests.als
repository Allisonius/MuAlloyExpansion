pred test0{
some disj Node1, Node0: Node {
Node = Node0 + Node1
adj = Node1->Node1
inv8[]
}
}

run test0

pred test1{
some disj Node0: Node {
Node = Node0
no adj
}
}

run test1

pred test2{
some disj Node1, Node0: Node {
Node = Node0 + Node1
adj = Node1->Node0
inv8[]
}
}

run test2

pred test3{

no Node
no adj
no Node' --loop state
inv8[]

}

run test3

pred test4{
some disj Node1, Node0: Node {
Node = Node0 + Node1
adj = Node0->Node0 + Node1->Node1
inv8[]
}
}

run test4

pred test5{
some disj Node1, Node0: Node {
Node = Node0 + Node1
no adj
inv8[]
}
}

run test5

pred test6{
some disj Node1, Node0: Node {
Node = Node0 + Node1
no adj
}
}

run test6

pred test7{
some disj Node1, Node0: Node {
Node = Node0 + Node1
adj = Node1->Node0 + Node1->Node1
}
}

run test7

pred test8{
some disj Node1, Node0: Node {
Node = Node0 + Node1
adj = Node1->Node0 + Node1->Node1
inv8[]
}
}

run test8

pred test9{
some disj Node0: Node {
Node = Node0
adj = Node0->Node0
inv8[]
}
}

run test9

