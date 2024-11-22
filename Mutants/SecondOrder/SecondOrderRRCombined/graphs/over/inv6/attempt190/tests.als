pred test0{
some disj Node1, Node0: Node {
Node = Node0 + Node1
adj = Node0->Node1 + Node1->Node1
inv6[]
}
}

run test0

pred test1{
some disj Node1, Node0: Node {
Node = Node0 + Node1
adj = Node0->Node0 + Node0->Node1 + Node1->Node0 + Node1->Node1
inv6[]
}
}

run test1

pred test2{
some disj Node1, Node0: Node {
Node = Node0 + Node1
adj = Node0->Node1 + Node1->Node0
inv6[]
}
}

run test2

pred test3{
some disj Node1, Node0: Node {
Node = Node0 + Node1
no adj
inv6[]
}
}

run test3

pred test4{
some disj Node1, Node0: Node {
Node = Node0 + Node1
no adj
}
}

run test4

pred test5{
some disj Node1, Node0: Node {
Node = Node0 + Node1
adj = Node1->Node1
}
}

run test5

pred test6{
some disj Node0: Node {
Node = Node0
no adj
}
}

run test6

pred test7{
some disj Node1, Node0: Node {
Node = Node0 + Node1
adj = Node0->Node0 + Node1->Node1
inv6[]
}
}

run test7

pred test8{
some disj Node1, Node0: Node {
Node = Node0 + Node1
adj = Node0->Node1 + Node1->Node0 + Node1->Node1
inv6[]
}
}

run test8

pred test9{
some disj Node0: Node {
Node = Node0
no adj
inv6[]
}
}

run test9

pred test10{
some disj Node1, Node0: Node {
Node = Node0 + Node1
adj = Node0->Node0 + Node1->Node0 + Node1->Node1
inv6[]
}
}

run test10

pred test11{
some disj Node1, Node0: Node {
Node = Node0 + Node1
adj = Node1->Node1
inv6[]
}
}

run test11

pred test12{
some disj Node1, Node0: Node {
Node = Node0 + Node1
adj = Node0->Node1 + Node1->Node0 + Node1->Node1
}
}

run test12

pred test13{

no Node
no adj
no Node' --loop state
inv6[]

}

run test13

pred test14{
some disj Node0: Node {
Node = Node0
adj = Node0->Node0
inv6[]
}
}

run test14

pred test15{
some disj Node1, Node0: Node {
Node = Node0 + Node1
adj = Node1->Node0
inv6[]
}
}

run test15

pred test16{
some disj Node1, Node0: Node {
Node = Node0 + Node1
adj = Node1->Node0 + Node1->Node1
}
}

run test16

