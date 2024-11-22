
pred test1 {
some disj Node1, Node0, Node2: Node {
Node = Node0 + Node1 + Node2
no adj
inv6[]
}
}
run test1 for 3 but 1 steps
pred test2 {
some disj Node0: Node {
Node = Node0
adj = Node0->Node0
inv6[]
}
}
run test2 for 3 but 1 steps
pred test3 {
some disj Node1, Node0: Node {
Node = Node0 + Node1
adj = Node1->Node0 + Node1->Node1
inv6[]
}
}
run test3 for 3 but 1 steps
pred test4 {

no Node
no adj
no Node' --loop state
inv6[]

}
run test4 for 3 but 1 steps
pred test5 {
some disj Node1, Node0: Node {
Node = Node0 + Node1
adj = Node1->Node0
inv6[]
}
}
run test5 for 3 but 1 steps
pred test6 {
some disj Node1, Node0: Node {
Node = Node0 + Node1
adj = Node0->Node1 + Node1->Node1
inv6[]
}
}
run test6 for 3 but 1 steps
pred test7 {
some disj Node1, Node0: Node {
Node = Node0 + Node1
no adj
inv6[]
}
}
run test7 for 3 but 1 steps
pred test8 {
some disj Node1, Node0: Node {
Node = Node0 + Node1
adj = Node0->Node0 + Node1->Node0 + Node1->Node1
inv6[]
}
}
run test8 for 3 but 1 steps
