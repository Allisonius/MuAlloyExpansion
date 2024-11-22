
pred test1 {
some disj Node0: Node {
Node = Node0
adj = Node0->Node0
inv7[]
}
}
run test1 for 3 but 1 steps
pred test2 {
some disj Node1, Node0: Node {
Node = Node0 + Node1
no adj
inv7[]
}
}
run test2 for 3 but 1 steps
pred test3 {

no Node
no adj
no Node' --loop state
inv7[]

}
run test3 for 3 but 1 steps
