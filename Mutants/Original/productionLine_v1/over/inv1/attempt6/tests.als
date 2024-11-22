open util/ordering [Position] as ordering

pred test1 {
some disj Position0, Position1, Position2: Position {some disj Component1, Component0, Resource0: Product {
Position = Position0 + Position1 + Position2
Component = Component0 + Component1
parts = Component1->Resource0
position = Component0->Position0 + Component1->Position1
Resource = Resource0
Product = Resource0 + Component0 + Component1
no Robot
no position
no Robot' --loop state
ordering/first = Position0
ordering/next = Position0->Position1 + Position1->Position2
inv1[]
}}
}
run test1 for 3 but 1 steps
pred test2 {
some disj Position0, Position1, Position2: Position {some disj Component1, Component0, Resource0: Product {some disj Robot0: Robot {
Position = Position0 + Position1 + Position2
Component = Component0 + Component1
parts = Component0->Component0 + Component1->Resource0
position = Component0->Position0 + Component1->Position1
Resource = Resource0
Product = Resource0 + Component0 + Component1
Robot = Robot0
position = Robot0->Position1
ordering/first = Position0
ordering/next = Position0->Position1 + Position1->Position2
inv1[]
}}}
}
run test2 for 3 but 1 steps
pred test3 {
some disj Position0, Position1, Position2: Position {some disj Component1, Component0, Resource0: Product {
Position = Position0 + Position1 + Position2
Component = Component0 + Component1
parts = Component0->Component0 + Component1->Resource0
position = Component0->Position0 + Component1->Position1
Resource = Resource0
Product = Resource0 + Component0 + Component1
no Robot
no position
no Robot' --loop state
ordering/first = Position0
ordering/next = Position0->Position1 + Position1->Position2
inv1[]
}}
}
run test3 for 3 but 1 steps
pred test4 {
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
inv1[]
}}}
}
run test4 for 3 but 1 steps
pred test5 {
some disj Position0, Position1, Position2: Position {some disj Component1, Component0, Resource0: Product {some disj Robot1, Robot0: Robot {
Position = Position0 + Position1 + Position2
Component = Component0 + Component1
parts = Component0->Component0 + Component1->Resource0
position = Component0->Position0 + Component1->Position1
Resource = Resource0
Product = Resource0 + Component0 + Component1
Robot = Robot0 + Robot1
position = Robot0->Position1 + Robot1->Position0
ordering/first = Position0
ordering/next = Position0->Position1 + Position1->Position2
inv1[]
}}}
}
run test5 for 3 but 1 steps
