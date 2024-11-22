
pred test1 {
some disj Node0: Node {
Node = Node0
adj = Node0->Node0
inv4[]
}
}
run test1 for 3 but 1 steps
pred test2 {

no Node
no adj
no Node' --loop state
inv4[]

}
run test2 for 3 but 1 steps
