
pred test1 {
some disj Node0: Node {
Node = Node0
adj = Node0->Node0
inv3[]
}
}
run test1 for 3 but 1 steps
pred test2 {

no Node
no adj
no Node' --loop state
inv3[]

}
run test2 for 3 but 1 steps
pred test3 {
some disj Node1, Node0: Node {
Node = Node0 + Node1
adj = Node1->Node0
inv3[]
}
}
run test3 for 3 but 1 steps
pred test4 {
some disj Node1, Node0, Node2: Node {
Node = Node0 + Node1 + Node2
adj = Node0->Node2 + Node1->Node0 + Node2->Node1
inv3[]
}
}
run test4 for 3 but 1 steps
