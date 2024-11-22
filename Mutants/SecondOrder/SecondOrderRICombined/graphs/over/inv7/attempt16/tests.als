pred test0{

no Node
no adj
no Node' --loop state
inv7[]

}

run test0

pred test1{
some disj Node0: Node {
Node = Node0
adj = Node0->Node0
inv7[]
}
}

run test1

