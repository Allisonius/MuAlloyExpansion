pred test0{
some disj Node1, Node0: Node {
Node = Node0 + Node1
adj = Node1->Node0
inv3[]
}
}

run test0

pred test1{

no Node
no adj
no Node' --loop state
inv3[]

}

run test1

