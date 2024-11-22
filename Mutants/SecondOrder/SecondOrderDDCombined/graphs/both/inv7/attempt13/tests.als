pred test0{

no Node
no adj
no Node' --loop state
inv7[]

}

run test0

pred test1{
some disj Node1, Node0: Node {
Node = Node0 + Node1
adj = Node1->Node0
inv7[]
}
}

run test1

