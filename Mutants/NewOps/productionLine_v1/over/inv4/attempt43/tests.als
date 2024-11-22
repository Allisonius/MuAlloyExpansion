open util/ordering [Position] as ordering

pred test1 {
some disj Position0, Position1, Position2: Position {some disj Component1, Component0, Resource0: Product {some disj Robot1, Robot0: Robot {
Position = Position0 + Position1 + Position2
Component = Component0 + Component1
parts = Component0->Component0 + Component1->Resource0 + Component1->Component1
position = Component0->Position0 + Component1->Position1
Resource = Resource0
Product = Resource0 + Component0 + Component1
Robot = Robot0 + Robot1
position = Robot0->Position1 + Robot1->Position0
ordering/first = Position0
ordering/next = Position0->Position1 + Position1->Position2
inv4[]
}}}
}
run test1 for 3 but 1 steps
pred test2 {
some disj Position0, Position1, Position2: Position {some disj Component1, Component0, Resource0: Product {some disj Robot1, Robot0: Robot {
Position = Position0 + Position1 + Position2
Component = Component0 + Component1
parts = Component1->Resource0 + Component1->Component1
position = Component0->Position0 + Component1->Position1
Resource = Resource0
Product = Resource0 + Component0 + Component1
Robot = Robot0 + Robot1
position = Robot0->Position1 + Robot1->Position0
ordering/first = Position0
ordering/next = Position0->Position1 + Position1->Position2
inv4[]
}}}
}
run test2 for 3 but 1 steps
pred test3 {
some disj Position0, Position1, Position2: Position {some disj Component1, Component0, Resource0: Product {some disj Robot1, Robot0: Robot {
Position = Position0 + Position1 + Position2
Component = Component0 + Component1
parts = Component1->Component0
position = Component0->Position0 + Component1->Position1
Resource = Resource0
Product = Resource0 + Component0 + Component1
Robot = Robot0 + Robot1
position = Robot0->Position1 + Robot1->Position0
ordering/first = Position0
ordering/next = Position0->Position1 + Position1->Position2
inv4[]
}}}
}
run test3 for 3 but 1 steps
pred test4 {
some disj Position0, Position1, Position2: Position {some disj Component1, Component0: Product {some disj Robot1, Robot0: Robot {
Position = Position0 + Position1 + Position2
Component = Component0 + Component1
parts = Component1->Component0
position = Component0->Position0 + Component1->Position1
no Resource
no Resource' --loop state
Product = Component0 + Component1
Robot = Robot0 + Robot1
position = Robot0->Position1 + Robot1->Position0
ordering/first = Position0
ordering/next = Position0->Position1 + Position1->Position2
inv4[]
}}}
}
run test4 for 3 but 1 steps
pred test5 {
some disj Position0, Position1, Position2: Position {some disj Component1, Component0, Resource0: Product {some disj Robot1, Robot0: Robot {
Position = Position0 + Position1 + Position2
Component = Component0 + Component1
parts = Component0->Component0 + Component0->Component1 + Component1->Resource0 + Component1->Component1
position = Component0->Position0 + Component1->Position1
Resource = Resource0
Product = Resource0 + Component0 + Component1
Robot = Robot0 + Robot1
position = Robot0->Position1 + Robot1->Position0
ordering/first = Position0
ordering/next = Position0->Position1 + Position1->Position2
inv4[]
}}}
}
run test5 for 3 but 1 steps
pred test6 {
some disj Position0, Position1, Position2: Position {some disj Component1, Component0, Resource0: Product {some disj Robot1, Robot0: Robot {
Position = Position0 + Position1 + Position2
Component = Component0 + Component1
parts = Component1->Component0 + Component1->Component1
position = Component0->Position0 + Component1->Position1
Resource = Resource0
Product = Resource0 + Component0 + Component1
Robot = Robot0 + Robot1
position = Robot0->Position1 + Robot1->Position0
ordering/first = Position0
ordering/next = Position0->Position1 + Position1->Position2
inv4[]
}}}
}
run test6 for 3 but 1 steps
pred test7 {
some disj Position0, Position1, Position2: Position {some disj Component1, Component0: Product {some disj Robot1, Robot0: Robot {
Position = Position0 + Position1 + Position2
Component = Component0 + Component1
parts = Component0->Component0 + Component1->Component0 + Component1->Component1
position = Component0->Position0 + Component1->Position1
no Resource
no Resource' --loop state
Product = Component0 + Component1
Robot = Robot0 + Robot1
position = Robot0->Position1 + Robot1->Position0
ordering/first = Position0
ordering/next = Position0->Position1 + Position1->Position2
inv4[]
}}}
}
run test7 for 3 but 1 steps
pred test8 {
some disj Position0, Position1, Position2: Position {some disj Component1, Component0, Resource0: Product {some disj Robot1, Robot0: Robot {
Position = Position0 + Position1 + Position2
Component = Component0 + Component1
parts = Component1->Resource0
position = Component0->Position0 + Component1->Position1
Resource = Resource0
Product = Resource0 + Component0 + Component1
Robot = Robot0 + Robot1
position = Robot0->Position1 + Robot1->Position0
ordering/first = Position0
ordering/next = Position0->Position1 + Position1->Position2
inv4[]
}}}
}
run test8 for 3 but 1 steps
pred test9 {
some disj Position0, Position1, Position2: Position {some disj Component1, Component0, Product0: Product {some disj Robot1, Robot0: Robot {
Position = Position0 + Position1 + Position2
Component = Component0 + Component1
parts = Component0->Product0 + Component1->Component0 + Component1->Component1
position = Component0->Position0 + Component1->Position1
no Resource
no Resource' --loop state
Product = Product0 + Component0 + Component1
Robot = Robot0 + Robot1
position = Robot0->Position1 + Robot1->Position0
ordering/first = Position0
ordering/next = Position0->Position1 + Position1->Position2
inv4[]
}}}
}
run test9 for 3 but 1 steps
pred test10 {
some disj Position0, Position1, Position2: Position {some disj Component1, Component0, Resource0: Product {some disj Robot1, Robot0: Robot {
Position = Position0 + Position1 + Position2
Component = Component0 + Component1
parts = Component0->Component1 + Component1->Resource0 + Component1->Component1
position = Component0->Position0 + Component1->Position1
Resource = Resource0
Product = Resource0 + Component0 + Component1
Robot = Robot0 + Robot1
position = Robot0->Position1 + Robot1->Position0
ordering/first = Position0
ordering/next = Position0->Position1 + Position1->Position2
inv4[]
}}}
}
run test10 for 3 but 1 steps
pred test11 {
some disj Position0, Position1, Position2: Position {some disj Component1, Component0, Resource0: Product {some disj Robot1, Robot0: Robot {
Position = Position0 + Position1 + Position2
Component = Component0 + Component1
no parts
position = Component0->Position0 + Component1->Position1
Resource = Resource0
Product = Resource0 + Component0 + Component1
Robot = Robot0 + Robot1
position = Robot0->Position1 + Robot1->Position0
ordering/first = Position0
ordering/next = Position0->Position1 + Position1->Position2
inv4[]
}}}
}
run test11 for 3 but 1 steps
pred test12 {
some disj Position0, Position1, Position2: Position {some disj Component1, Component0, Resource0: Product {some disj Robot1, Robot0: Robot {
Position = Position0 + Position1 + Position2
Component = Component0 + Component1
parts = Component0->Resource0 + Component0->Component0 + Component0->Component1 + Component1->Resource0 + Component1->Component0 + Component1->Component1
position = Component0->Position0 + Component1->Position1
Resource = Resource0
Product = Resource0 + Component0 + Component1
Robot = Robot0 + Robot1
position = Robot0->Position1 + Robot1->Position0
ordering/first = Position0
ordering/next = Position0->Position1 + Position1->Position2
inv4[]
}}}
}
run test12 for 3 but 1 steps
pred test13 {
some disj Position0, Position1, Position2: Position {some disj Component1, Component0, Resource0: Product {some disj Robot1, Robot0: Robot {
Position = Position0 + Position1 + Position2
Component = Component0 + Component1
parts = Component0->Resource0 + Component1->Component0 + Component1->Component1
position = Component0->Position0 + Component1->Position1
Resource = Resource0
Product = Resource0 + Component0 + Component1
Robot = Robot0 + Robot1
position = Robot0->Position1 + Robot1->Position0
ordering/first = Position0
ordering/next = Position0->Position1 + Position1->Position2
inv4[]
}}}
}
run test13 for 3 but 1 steps
pred test14 {
some disj Position0, Position1, Position2: Position {some disj Component1, Component0, Product0: Product {some disj Robot1, Robot0: Robot {
Position = Position0 + Position1 + Position2
Component = Component0 + Component1
parts = Component1->Component0
position = Component0->Position0 + Component1->Position1
no Resource
no Resource' --loop state
Product = Product0 + Component0 + Component1
Robot = Robot0 + Robot1
position = Robot0->Position1 + Robot1->Position0
ordering/first = Position0
ordering/next = Position0->Position1 + Position1->Position2
inv4[]
}}}
}
run test14 for 3 but 1 steps
pred test15 {
some disj Position0, Position1, Position2: Position {some disj Component1, Component0, Resource0: Product {some disj Robot1, Robot0: Robot {
Position = Position0 + Position1 + Position2
Component = Component0 + Component1
parts = Component0->Resource0 + Component1->Component0
position = Component0->Position0 + Component1->Position1
Resource = Resource0
Product = Resource0 + Component0 + Component1
Robot = Robot0 + Robot1
position = Robot0->Position1 + Robot1->Position0
ordering/first = Position0
ordering/next = Position0->Position1 + Position1->Position2
inv4[]
}}}
}
run test15 for 3 but 1 steps
pred test16 {
some disj Position0, Position1, Position2: Position {some disj Component1, Component0, Resource0: Product {some disj Robot1, Robot0: Robot {
Position = Position0 + Position1 + Position2
Component = Component0 + Component1
parts = Component0->Resource0 + Component1->Resource0
position = Component0->Position0 + Component1->Position1
Resource = Resource0
Product = Resource0 + Component0 + Component1
Robot = Robot0 + Robot1
position = Robot0->Position1 + Robot1->Position0
ordering/first = Position0
ordering/next = Position0->Position1 + Position1->Position2
inv4[]
}}}
}
run test16 for 3 but 1 steps
pred test17 {
some disj Position0, Position1, Position2: Position {some disj Component1, Component0, Resource0: Product {some disj Robot0: Robot {
Position = Position0 + Position1 + Position2
Component = Component0 + Component1
parts = Component1->Component0
position = Component0->Position0 + Component1->Position1
Resource = Resource0
Product = Resource0 + Component0 + Component1
Robot = Robot0
position = Robot0->Position1
ordering/first = Position0
ordering/next = Position0->Position1 + Position1->Position2
inv4[]
}}}
}
run test17 for 3 but 1 steps
pred test18 {
some disj Position0, Position1, Position2: Position {some disj Component1, Component0, Product0: Product {some disj Robot0: Robot {
Position = Position0 + Position1 + Position2
Component = Component0 + Component1
parts = Component1->Component0
position = Component0->Position0 + Component1->Position1
no Resource
no Resource' --loop state
Product = Product0 + Component0 + Component1
Robot = Robot0
position = Robot0->Position1
ordering/first = Position0
ordering/next = Position0->Position1 + Position1->Position2
inv4[]
}}}
}
run test18 for 3 but 1 steps
pred test19 {
some disj Position0, Position1, Position2: Position {some disj Component1, Component0, Product0: Product {
Position = Position0 + Position1 + Position2
Component = Component0 + Component1
parts = Component1->Component0
position = Component0->Position1 + Component1->Position2
no Resource
no Resource' --loop state
Product = Product0 + Component0 + Component1
no Robot
no position
no Robot' --loop state
ordering/first = Position0
ordering/next = Position0->Position1 + Position1->Position2
inv4[]
}}
}
run test19 for 3 but 1 steps
pred test20 {
some disj Position0, Position1, Position2: Position {some disj Component1, Component0: Product {
Position = Position0 + Position1 + Position2
Component = Component0 + Component1
parts = Component1->Component0
position = Component0->Position1 + Component1->Position2
no Resource
no Resource' --loop state
Product = Component0 + Component1
no Robot
no position
no Robot' --loop state
ordering/first = Position0
ordering/next = Position0->Position1 + Position1->Position2
inv4[]
}}
}
run test20 for 3 but 1 steps
pred test21 {
some disj Position0, Position1, Position2: Position {some disj Component1, Component2, Component0: Product {some disj Robot1, Robot0, Robot2: Robot {
Position = Position0 + Position1 + Position2
Component = Component0 + Component1 + Component2
parts = Component1->Component0 + Component2->Component0 + Component2->Component1
position = Component0->Position0 + Component1->Position1 + Component2->Position2
no Resource
no Resource' --loop state
Product = Component0 + Component1 + Component2
Robot = Robot0 + Robot1 + Robot2
position = Robot0->Position1 + Robot1->Position0 + Robot2->Position0
ordering/first = Position0
ordering/next = Position0->Position1 + Position1->Position2
inv4[]
}}}
}
run test21 for 3 but 1 steps
