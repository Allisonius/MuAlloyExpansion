pred test0{
some disj Node1, Node0, Node2: Node {
Node = Node0 + Node1 + Node2
adj = Node0->Node2 + Node1->Node0 + Node1->Node1
inv8[]
}
}

run test0

pred test1{
some disj Node1, Node0, Node2: Node {
Node = Node0 + Node1 + Node2
adj = Node0->Node1 + Node0->Node2 + Node1->Node0 + Node1->Node2 + Node2->Node0 + Node2->Node1 + Node2->Node2
inv8[]
}
}

run test1

pred test2{
some disj Node1, Node0, Node2: Node {
Node = Node0 + Node1 + Node2
adj = Node0->Node2 + Node1->Node1 + Node1->Node2 + Node2->Node0
inv8[]
}
}

run test2

pred test3{
some disj Node1, Node0, Node2: Node {
Node = Node0 + Node1 + Node2
adj = Node0->Node2 + Node1->Node0 + Node2->Node1
inv8[]
}
}

run test3

pred test4{
some disj Node1, Node0, Node2: Node {
Node = Node0 + Node1 + Node2
adj = Node0->Node2 + Node1->Node0 + Node1->Node2
inv8[]
}
}

run test4

pred test5{
some disj Node1, Node0, Node2: Node {
Node = Node0 + Node1 + Node2
adj = Node0->Node1 + Node0->Node2 + Node1->Node1 + Node2->Node0 + Node2->Node1
inv8[]
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
some disj Node1, Node0, Node2: Node {
Node = Node0 + Node1 + Node2
adj = Node0->Node1 + Node0->Node2 + Node1->Node1 + Node2->Node1 + Node2->Node2
inv8[]
}
}

run test7

pred test8{
some disj Node1, Node0, Node2: Node {
Node = Node0 + Node1 + Node2
adj = Node1->Node0 + Node1->Node1 + Node2->Node0 + Node2->Node1 + Node2->Node2
inv8[]
}
}

run test8

pred test9{
some disj Node1, Node0, Node2: Node {
Node = Node0 + Node1 + Node2
adj = Node0->Node2 + Node1->Node0 + Node1->Node1 + Node1->Node2 + Node2->Node0 + Node2->Node2
inv8[]
}
}

run test9

pred test10{
some disj Node1, Node0, Node2: Node {
Node = Node0 + Node1 + Node2
adj = Node0->Node1 + Node0->Node2 + Node1->Node1 + Node2->Node0 + Node2->Node1 + Node2->Node2
inv8[]
}
}

run test10

pred test11{
some disj Node1, Node0, Node2: Node {
Node = Node0 + Node1 + Node2
adj = Node0->Node2 + Node1->Node0 + Node1->Node1 + Node1->Node2
inv8[]
}
}

run test11

pred test12{
some disj Node1, Node0, Node2: Node {
Node = Node0 + Node1 + Node2
adj = Node0->Node2 + Node1->Node1 + Node1->Node2
inv8[]
}
}

run test12

pred test13{
some disj Node1, Node0, Node2: Node {
Node = Node0 + Node1 + Node2
adj = Node0->Node2 + Node1->Node1
inv8[]
}
}

run test13

pred test14{
some disj Node1, Node0, Node2: Node {
Node = Node0 + Node1 + Node2
adj = Node0->Node2 + Node1->Node0 + Node1->Node1 + Node2->Node1
inv8[]
}
}

run test14

pred test15{
some disj Node1, Node0, Node2: Node {
Node = Node0 + Node1 + Node2
adj = Node0->Node2 + Node1->Node0
inv8[]
}
}

run test15

pred test16{
some disj Node1, Node0, Node2: Node {
Node = Node0 + Node1 + Node2
adj = Node0->Node2 + Node1->Node1 + Node2->Node2
inv8[]
}
}

run test16

pred test17{
some disj Node1, Node0, Node2: Node {
Node = Node0 + Node1 + Node2
adj = Node0->Node1 + Node0->Node2 + Node1->Node1 + Node2->Node2
inv8[]
}
}

run test17

pred test18{
some disj Node1, Node0, Node2: Node {
Node = Node0 + Node1 + Node2
adj = Node1->Node2 + Node2->Node0 + Node2->Node2
inv8[]
}
}

run test18

pred test19{
some disj Node1, Node0, Node2: Node {
Node = Node0 + Node1 + Node2
adj = Node0->Node2 + Node1->Node0 + Node1->Node2 + Node2->Node0 + Node2->Node2
inv8[]
}
}

run test19

pred test20{
some disj Node1, Node0: Node {
Node = Node0 + Node1
adj = Node1->Node0 + Node1->Node1
}
}

run test20

pred test21{
some disj Node1, Node0, Node2: Node {
Node = Node0 + Node1 + Node2
adj = Node0->Node2 + Node1->Node0 + Node1->Node1 + Node2->Node0
inv8[]
}
}

run test21

pred test22{
some disj Node1, Node0, Node2: Node {
Node = Node0 + Node1 + Node2
adj = Node0->Node2 + Node1->Node1 + Node2->Node0
inv8[]
}
}

run test22

pred test23{
some disj Node1, Node0, Node2: Node {
Node = Node0 + Node1 + Node2
adj = Node1->Node1 + Node1->Node2 + Node2->Node0 + Node2->Node1
inv8[]
}
}

run test23

pred test24{
some disj Node1, Node0, Node2: Node {
Node = Node0 + Node1 + Node2
adj = Node1->Node2 + Node2->Node0 + Node2->Node1
inv8[]
}
}

run test24

pred test25{
some disj Node1, Node0, Node2: Node {
Node = Node0 + Node1 + Node2
no adj
inv8[]
}
}

run test25

pred test26{
some disj Node1, Node0, Node2: Node {
Node = Node0 + Node1 + Node2
adj = Node1->Node1 + Node2->Node0 + Node2->Node2
inv8[]
}
}

run test26

pred test27{
some disj Node1, Node0: Node {
Node = Node0 + Node1
no adj
}
}

run test27

pred test28{
some disj Node1, Node0, Node2: Node {
Node = Node0 + Node1 + Node2
adj = Node0->Node1 + Node0->Node2 + Node1->Node0 + Node1->Node1 + Node2->Node0 + Node2->Node2
inv8[]
}
}

run test28

pred test29{
some disj Node1, Node0, Node2: Node {
Node = Node0 + Node1 + Node2
adj = Node1->Node0 + Node1->Node1 + Node1->Node2 + Node2->Node0 + Node2->Node1 + Node2->Node2
inv8[]
}
}

run test29

pred test30{
some disj Node1, Node0, Node2: Node {
Node = Node0 + Node1 + Node2
adj = Node0->Node1 + Node0->Node2 + Node1->Node1 + Node1->Node2 + Node2->Node1 + Node2->Node2
inv8[]
}
}

run test30

pred test31{
some disj Node1, Node0: Node {
Node = Node0 + Node1
adj = Node1->Node1
}
}

run test31

pred test32{
some disj Node1, Node0, Node2: Node {
Node = Node0 + Node1 + Node2
adj = Node2->Node1 + Node2->Node2
inv8[]
}
}

run test32

pred test33{
some disj Node1, Node0, Node2: Node {
Node = Node0 + Node1 + Node2
adj = Node1->Node0 + Node2->Node0 + Node2->Node1 + Node2->Node2
inv8[]
}
}

run test33

pred test34{
some disj Node1, Node0: Node {
Node = Node0 + Node1
adj = Node0->Node1 + Node1->Node0 + Node1->Node1
}
}

run test34

pred test35{
some disj Node1, Node0, Node2: Node {
Node = Node0 + Node1 + Node2
adj = Node1->Node0 + Node1->Node2 + Node2->Node0 + Node2->Node2
inv8[]
}
}

run test35

pred test36{
some disj Node1, Node0, Node2: Node {
Node = Node0 + Node1 + Node2
adj = Node1->Node0 + Node1->Node1 + Node2->Node0 + Node2->Node2
inv8[]
}
}

run test36

pred test37{
some disj Node1, Node0, Node2: Node {
Node = Node0 + Node1 + Node2
adj = Node1->Node0 + Node1->Node2 + Node2->Node0 + Node2->Node1
inv8[]
}
}

run test37

pred test38{
some disj Node0: Node {
Node = Node0
adj = Node0->Node0
inv8[]
}
}

run test38

