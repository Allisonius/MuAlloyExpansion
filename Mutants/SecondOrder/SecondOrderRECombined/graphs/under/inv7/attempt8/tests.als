pred test0{
some disj Node1, Node0: Node {
Node = Node0 + Node1
adj = Node0->Node0 + Node1->Node0 + Node1->Node1
inv7[]
}
}

run test0

pred test1{

no Node
no adj
no Node' --loop state
inv7[]

}

run test1

pred test2{
some disj Node1, Node0: Node {
Node = Node0 + Node1
adj = Node1->Node1
inv7[]
}
}

run test2

pred test3{
some disj Node0: Node {
Node = Node0
adj = Node0->Node0
inv7[]
}
}

run test3

