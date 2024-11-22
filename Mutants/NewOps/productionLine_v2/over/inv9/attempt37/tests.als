
pred test1 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Worker0, Human0: Worker {some disj Component1, Component2, Component0: Product {
Workstation = Workstation0 + Workstation1
workers = Workstation0->Worker0 + Workstation0->Robot0
succ = Workstation0->Workstation1 + Workstation1->Workstation1
Human = Human0
Robot = Robot0
Worker = Worker0 + Robot0 + Human0
no Material
no Material' --loop state
Component = Component0 + Component1 + Component2
workstation = Component0->Workstation0 + Component1->Workstation0 + Component2->Workstation0
Product = Component0 + Component1 + Component2
parts = Component0->Component2 + Component1->Component0 + Component1->Component1
begin = Workstation1
end = Workstation1
Dangerous = Component2
inv9[]
}}}
}
run test1 for 3 but 1 steps
pred test2 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Worker0, Human0: Worker {some disj Component1, Component2, Component0: Product {
Workstation = Workstation0 + Workstation1
workers = Workstation0->Worker0 + Workstation0->Robot0
succ = Workstation0->Workstation0 + Workstation0->Workstation1 + Workstation1->Workstation1
Human = Human0
Robot = Robot0
Worker = Worker0 + Robot0 + Human0
no Material
no Material' --loop state
Component = Component0 + Component1 + Component2
workstation = Component0->Workstation0 + Component1->Workstation0 + Component2->Workstation0
Product = Component0 + Component1 + Component2
parts = Component0->Component2 + Component1->Component0 + Component1->Component1
begin = Workstation1
end = Workstation1
Dangerous = Component2
inv9[]
}}}
}
run test2 for 3 but 1 steps
pred test3 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Worker0, Human0: Worker {some disj Component1, Component2, Component0: Product {
Workstation = Workstation0 + Workstation1
workers = Workstation0->Worker0 + Workstation0->Robot0
succ = Workstation0->Workstation1
Human = Human0
Robot = Robot0
Worker = Worker0 + Robot0 + Human0
no Material
no Material' --loop state
Component = Component0 + Component1 + Component2
workstation = Component0->Workstation0 + Component1->Workstation0 + Component2->Workstation0
Product = Component0 + Component1 + Component2
parts = Component0->Component2 + Component1->Component0 + Component1->Component1
begin = Workstation1
end = Workstation1
Dangerous = Component2
inv9[]
}}}
}
run test3 for 3 but 1 steps
pred test4 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Worker0, Human0: Worker {some disj Component1, Component2, Component0: Product {
Workstation = Workstation0 + Workstation1
workers = Workstation0->Worker0 + Workstation0->Robot0
succ = Workstation0->Workstation1 + Workstation1->Workstation1
Human = Human0
Robot = Robot0
Worker = Worker0 + Robot0 + Human0
no Material
no Material' --loop state
Component = Component0 + Component1 + Component2
workstation = Component0->Workstation0 + Component1->Workstation0 + Component2->Workstation0
Product = Component0 + Component1 + Component2
parts = Component0->Component2 + Component1->Component0 + Component1->Component1
begin = Workstation1
end = Workstation0
Dangerous = Component2
inv9[]
}}}
}
run test4 for 3 but 1 steps
pred test5 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Human0: Worker {some disj Component1, Component2, Component0: Product {
Workstation = Workstation0 + Workstation1
no workers
succ = Workstation0->Workstation0 + Workstation1->Workstation1
Human = Human0
Robot = Robot0
Worker = Robot0 + Human0
no Material
no Material' --loop state
Component = Component0 + Component1 + Component2
workstation = Component0->Workstation0 + Component1->Workstation0 + Component1->Workstation1 + Component2->Workstation0
Product = Component0 + Component1 + Component2
parts = Component0->Component2 + Component1->Component0 + Component1->Component1
begin = Workstation1
end = Workstation1
Dangerous = Component2
inv9[]
}}}
}
run test5 for 3 but 1 steps
pred test6 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Human0: Worker {some disj Component1, Component2, Component0: Product {
Workstation = Workstation0 + Workstation1
no workers
succ = Workstation1->Workstation0 + Workstation1->Workstation1
Human = Human0
Robot = Robot0
Worker = Robot0 + Human0
no Material
no Material' --loop state
Component = Component0 + Component1 + Component2
workstation = Component0->Workstation1 + Component1->Workstation1
Product = Component0 + Component1 + Component2
parts = Component0->Component2 + Component1->Component0 + Component1->Component1
begin = Workstation1
end = Workstation1
Dangerous = Component2
inv9[]
}}}
}
run test6 for 3 but 1 steps
pred test7 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Human0: Worker {some disj Component1, Component2, Component0: Product {
Workstation = Workstation0 + Workstation1
no workers
succ = Workstation0->Workstation1 + Workstation1->Workstation0
Human = Human0
Robot = Robot0
Worker = Robot0 + Human0
no Material
no Material' --loop state
Component = Component0 + Component1 + Component2
workstation = Component0->Workstation0 + Component1->Workstation0 + Component1->Workstation1
Product = Component0 + Component1 + Component2
parts = Component0->Component2 + Component1->Component0 + Component1->Component1
begin = Workstation1
end = Workstation1
Dangerous = Component2
inv9[]
}}}
}
run test7 for 3 but 1 steps
pred test8 {
some disj Workstation0: Workstation {some disj Robot0, Human0: Worker {some disj Material1, Material0, Component0: Product {
Workstation = Workstation0
no workers
no succ
Human = Human0
Robot = Robot0
Worker = Robot0 + Human0
Material = Material0 + Material1
Component = Component0
workstation = Component0->Workstation0
Product = Material0 + Material1 + Component0
parts = Material0->Component0 + Material1->Material0 + Material1->Material1
begin = Workstation0
end = Workstation0
Dangerous = Material1
inv9[]
}}}
}
run test8 for 3 but 1 steps
pred test9 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Worker0, Human0: Worker {some disj Component1, Component2, Component0: Product {
Workstation = Workstation0 + Workstation1
workers = Workstation0->Worker0 + Workstation0->Robot0
succ = Workstation0->Workstation1 + Workstation1->Workstation0
Human = Human0
Robot = Robot0
Worker = Worker0 + Robot0 + Human0
no Material
no Material' --loop state
Component = Component0 + Component1 + Component2
workstation = Component0->Workstation0 + Component1->Workstation0 + Component2->Workstation0
Product = Component0 + Component1 + Component2
parts = Component0->Component2 + Component1->Component0 + Component1->Component1
begin = Workstation1
end = Workstation1
Dangerous = Component2
inv9[]
}}}
}
run test9 for 3 but 1 steps
pred test10 {
some disj Workstation0: Workstation {some disj Robot0, Worker0, Human0: Worker {some disj Component1, Component2, Component0: Product {
Workstation = Workstation0
no workers
no succ
Human = Human0
Robot = Robot0
Worker = Worker0 + Robot0 + Human0
no Material
no Material' --loop state
Component = Component0 + Component1 + Component2
no workstation
Product = Component0 + Component1 + Component2
parts = Component0->Component2 + Component1->Component0 + Component1->Component1
begin = Workstation0
end = Workstation0
Dangerous = Component2
inv9[]
}}}
}
run test10 for 3 but 1 steps
pred test11 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Worker0, Human0: Worker {some disj Component1, Component2, Component0: Product {
Workstation = Workstation0 + Workstation1
workers = Workstation0->Worker0 + Workstation0->Robot0
succ = Workstation0->Workstation1
Human = Human0
Robot = Robot0
Worker = Worker0 + Robot0 + Human0
no Material
no Material' --loop state
Component = Component0 + Component1 + Component2
workstation = Component0->Workstation0 + Component1->Workstation0 + Component2->Workstation0
Product = Component0 + Component1 + Component2
parts = Component0->Component2 + Component1->Component0 + Component1->Component1
begin = Workstation1
end = Workstation0
Dangerous = Component2
inv9[]
}}}
}
run test11 for 3 but 1 steps
pred test12 {
some disj Workstation0: Workstation {some disj Robot0, Worker0, Human0: Worker {some disj Component1, Component2, Component0: Product {
Workstation = Workstation0
workers = Workstation0->Worker0 + Workstation0->Robot0
no succ
Human = Human0
Robot = Robot0
Worker = Worker0 + Robot0 + Human0
no Material
no Material' --loop state
Component = Component0 + Component1 + Component2
no workstation
Product = Component0 + Component1 + Component2
parts = Component0->Component2 + Component1->Component0 + Component1->Component1
begin = Workstation0
end = Workstation0
Dangerous = Component2
inv9[]
}}}
}
run test12 for 3 but 1 steps
pred test13 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Worker0, Human0: Worker {some disj Component0: Product {
Workstation = Workstation0 + Workstation1
workers = Workstation0->Worker0 + Workstation1->Robot0
succ = Workstation0->Workstation1
Human = Human0
Robot = Robot0
Worker = Worker0 + Robot0 + Human0
no Material
no Material' --loop state
Component = Component0
workstation = Component0->Workstation0
Product = Component0
parts = Component0->Component0
begin = Workstation1
end = Workstation1
Dangerous = Component0
inv9[]
}}}
}
run test13 for 3 but 1 steps
pred test14 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Worker0, Human0: Worker {some disj Material0, Component1, Component0: Product {
Workstation = Workstation0 + Workstation1
workers = Workstation0->Worker0 + Workstation1->Robot0
succ = Workstation0->Workstation1
Human = Human0
Robot = Robot0
Worker = Worker0 + Robot0 + Human0
Material = Material0
Component = Component0 + Component1
workstation = Component0->Workstation0 + Component1->Workstation0
Product = Material0 + Component0 + Component1
parts = Material0->Material0 + Material0->Component1 + Component0->Material0 + Component1->Component1
begin = Workstation1
end = Workstation1
Dangerous = Component1
inv9[]
}}}
}
run test14 for 3 but 1 steps
pred test15 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Worker0, Human0: Worker {some disj Material1, Material0, Component0: Product {
Workstation = Workstation0 + Workstation1
workers = Workstation0->Worker0 + Workstation1->Robot0
succ = Workstation0->Workstation1
Human = Human0
Robot = Robot0
Worker = Worker0 + Robot0 + Human0
Material = Material0 + Material1
Component = Component0
workstation = Component0->Workstation0
Product = Material0 + Material1 + Component0
parts = Material0->Component0 + Material1->Material0 + Material1->Material1
begin = Workstation1
end = Workstation1
Dangerous = Component0
inv9[]
}}}
}
run test15 for 3 but 1 steps
pred test16 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Worker0, Human0: Worker {some disj Component1, Component2, Component0: Product {
Workstation = Workstation0 + Workstation1
workers = Workstation0->Robot0 + Workstation1->Worker0
succ = Workstation0->Workstation1
Human = Human0
Robot = Robot0
Worker = Worker0 + Robot0 + Human0
no Material
no Material' --loop state
Component = Component0 + Component1 + Component2
workstation = Component0->Workstation0 + Component1->Workstation0 + Component2->Workstation0
Product = Component0 + Component1 + Component2
parts = Component0->Component2 + Component1->Component0 + Component1->Component1
begin = Workstation1
end = Workstation1
Dangerous = Component2
inv9[]
}}}
}
run test16 for 3 but 1 steps
pred test17 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Worker0, Human0: Worker {some disj Component1, Component2, Component0: Product {
Workstation = Workstation0 + Workstation1
workers = Workstation0->Worker0 + Workstation0->Robot0
succ = Workstation1->Workstation0
Human = Human0
Robot = Robot0
Worker = Worker0 + Robot0 + Human0
no Material
no Material' --loop state
Component = Component0 + Component1 + Component2
workstation = Component0->Workstation0 + Component1->Workstation0 + Component2->Workstation0
Product = Component0 + Component1 + Component2
parts = Component0->Component2 + Component1->Component0 + Component1->Component1
begin = Workstation1
end = Workstation1
Dangerous = Component2
inv9[]
}}}
}
run test17 for 3 but 1 steps
pred test18 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Human0: Worker {some disj Material1, Material0, Component0: Product {
Workstation = Workstation0 + Workstation1
no workers
succ = Workstation0->Workstation1
Human = Human0
Robot = Robot0
Worker = Robot0 + Human0
Material = Material0 + Material1
Component = Component0
workstation = Component0->Workstation0 + Component0->Workstation1
Product = Material0 + Material1 + Component0
parts = Material0->Component0 + Material1->Material0 + Material1->Material1
begin = Workstation1
end = Workstation1
Dangerous = Material1
inv9[]
}}}
}
run test18 for 3 but 1 steps
pred test19 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Human0: Worker {some disj Material1, Material0, Component0: Product {
Workstation = Workstation0 + Workstation1
no workers
succ = Workstation1->Workstation0
Human = Human0
Robot = Robot0
Worker = Robot0 + Human0
Material = Material0 + Material1
Component = Component0
workstation = Component0->Workstation0 + Component0->Workstation1
Product = Material0 + Material1 + Component0
parts = Material0->Component0 + Material1->Material0 + Material1->Material1
begin = Workstation1
end = Workstation1
Dangerous = Material1
inv9[]
}}}
}
run test19 for 3 but 1 steps
pred test20 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Human0: Worker {some disj Component1, Component2, Component0: Product {
Workstation = Workstation0 + Workstation1
no workers
succ = Workstation0->Workstation1
Human = Human0
Robot = Robot0
Worker = Robot0 + Human0
no Material
no Material' --loop state
Component = Component0 + Component1 + Component2
workstation = Component0->Workstation0 + Component1->Workstation0 + Component2->Workstation0
Product = Component0 + Component1 + Component2
parts = Component0->Component2 + Component1->Component0 + Component1->Component1
begin = Workstation1
end = Workstation1
Dangerous = Component2
inv9[]
}}}
}
run test20 for 3 but 1 steps
pred test21 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Human0: Worker {some disj Material1, Material0, Component0: Product {
Workstation = Workstation0 + Workstation1
no workers
succ = Workstation1->Workstation0
Human = Human0
Robot = Robot0
Worker = Robot0 + Human0
Material = Material0 + Material1
Component = Component0
workstation = Component0->Workstation0 + Component0->Workstation1
Product = Material0 + Material1 + Component0
parts = Material0->Component0 + Material1->Material0 + Material1->Material1
begin = Workstation1
end = Workstation0
Dangerous = Material1
inv9[]
}}}
}
run test21 for 3 but 1 steps
