
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
inv4[]
}}}
}
run test1 for 3 but 1 steps
pred test2 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Human0: Worker {some disj Material0, Component1, Component0: Product {
Workstation = Workstation0 + Workstation1
no workers
succ = Workstation0->Workstation1 + Workstation1->Workstation1
Human = Human0
Robot = Robot0
Worker = Robot0 + Human0
Material = Material0
Component = Component0 + Component1
workstation = Component0->Workstation0 + Component1->Workstation0
Product = Material0 + Component0 + Component1
parts = Material0->Material0 + Material0->Component0 + Material0->Component1 + Component0->Component0 + Component0->Component1 + Component1->Component0 + Component1->Component1
begin = Workstation1
end = Workstation1
Dangerous = Component0 + Component1
inv4[]
}}}
}
run test2 for 3 but 1 steps
pred test3 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Worker0, Human0: Worker {some disj Component1, Component2, Component0: Product {
Workstation = Workstation0 + Workstation1
workers = Workstation0->Worker0
succ = Workstation0->Workstation1 + Workstation1->Workstation1
Human = Human0
Robot = Robot0
Worker = Worker0 + Robot0 + Human0
no Material
no Material' --loop state
Component = Component0 + Component1 + Component2
workstation = Component0->Workstation0 + Component1->Workstation0 + Component2->Workstation0
Product = Component0 + Component1 + Component2
parts = Component0->Component0 + Component0->Component1 + Component0->Component2 + Component1->Component0 + Component1->Component1 + Component1->Component2 + Component2->Component0 + Component2->Component1 + Component2->Component2
begin = Workstation1
end = Workstation1
Dangerous = Component2
inv4[]
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
parts = Component1->Component1
begin = Workstation1
end = Workstation1
Dangerous = Component2
inv4[]
}}}
}
run test4 for 3 but 1 steps
pred test5 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Worker0, Human0: Worker {some disj Material2, Material1, Material0: Product {
Workstation = Workstation0 + Workstation1
workers = Workstation0->Worker0
succ = Workstation0->Workstation1 + Workstation1->Workstation1
Human = Human0
Robot = Robot0
Worker = Worker0 + Robot0 + Human0
Material = Material0 + Material1 + Material2
no Component
no workstation
no Component' --loop state
Product = Material0 + Material1 + Material2
no parts
begin = Workstation1
end = Workstation1
Dangerous = Material1 + Material2
inv4[]
}}}
}
run test5 for 3 but 1 steps
pred test6 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Worker0, Human0: Worker {some disj Material2, Material1, Material0: Product {
Workstation = Workstation0 + Workstation1
workers = Workstation1->Worker0
succ = Workstation0->Workstation1 + Workstation1->Workstation1
Human = Human0
Robot = Robot0
Worker = Worker0 + Robot0 + Human0
Material = Material0 + Material1 + Material2
no Component
no workstation
no Component' --loop state
Product = Material0 + Material1 + Material2
no parts
begin = Workstation1
end = Workstation1
Dangerous = Material2
inv4[]
}}}
}
run test6 for 3 but 1 steps
pred test7 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Worker0, Human0: Worker {some disj Material0, Component1, Component0: Product {
Workstation = Workstation0 + Workstation1
workers = Workstation0->Worker0 + Workstation0->Robot0
succ = Workstation0->Workstation1 + Workstation1->Workstation1
Human = Human0
Robot = Robot0
Worker = Worker0 + Robot0 + Human0
Material = Material0
Component = Component0 + Component1
workstation = Component0->Workstation0 + Component1->Workstation0
Product = Material0 + Component0 + Component1
parts = Material0->Component0 + Component0->Component0 + Component0->Component1 + Component1->Component0 + Component1->Component1
begin = Workstation1
end = Workstation1
Dangerous = Material0 + Component1
inv4[]
}}}
}
run test7 for 3 but 1 steps
pred test8 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Worker0, Human0: Worker {some disj Material1, Material0, Component0: Product {
Workstation = Workstation0 + Workstation1
workers = Workstation1->Worker0
succ = Workstation0->Workstation1 + Workstation1->Workstation1
Human = Human0
Robot = Robot0
Worker = Worker0 + Robot0 + Human0
Material = Material0 + Material1
Component = Component0
workstation = Component0->Workstation0
Product = Material0 + Material1 + Component0
parts = Material0->Component0 + Material1->Component0
begin = Workstation1
end = Workstation1
Dangerous = Material1
inv4[]
}}}
}
run test8 for 3 but 1 steps
pred test9 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Worker0, Human0: Worker {some disj Material0, Component0: Product {
Workstation = Workstation0 + Workstation1
workers = Workstation0->Worker0
succ = Workstation0->Workstation1 + Workstation1->Workstation1
Human = Human0
Robot = Robot0
Worker = Worker0 + Robot0 + Human0
Material = Material0
Component = Component0
workstation = Component0->Workstation0 + Component0->Workstation1
Product = Material0 + Component0
parts = Material0->Component0
begin = Workstation1
end = Workstation1
Dangerous = Component0
inv4[]
}}}
}
run test9 for 3 but 1 steps
pred test10 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Worker0, Human0: Worker {some disj Material0, Component1, Component0: Product {
Workstation = Workstation0 + Workstation1
no workers
succ = Workstation0->Workstation1 + Workstation1->Workstation1
Human = Human0
Robot = Robot0
Worker = Worker0 + Robot0 + Human0
Material = Material0
Component = Component0 + Component1
workstation = Component0->Workstation1 + Component1->Workstation0
Product = Material0 + Component0 + Component1
parts = Material0->Component1 + Component0->Component0 + Component0->Component1 + Component1->Component0 + Component1->Component1
begin = Workstation1
end = Workstation1
Dangerous = Material0 + Component1
inv4[]
}}}
}
run test10 for 3 but 1 steps
pred test11 {
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
parts = Component0->Component2 + Component1->Component0 + Component1->Component1 + Component1->Component2
begin = Workstation1
end = Workstation1
Dangerous = Component0 + Component1 + Component2
inv4[]
}}}
}
run test11 for 3 but 1 steps
pred test12 {
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
parts = Component1->Component2 + Component2->Component0 + Component2->Component1 + Component2->Component2
begin = Workstation1
end = Workstation1
Dangerous = Component2
inv4[]
}}}
}
run test12 for 3 but 1 steps
pred test13 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Worker0, Human0: Worker {some disj Component1, Component2, Component0: Product {
Workstation = Workstation0 + Workstation1
workers = Workstation0->Worker0
succ = Workstation0->Workstation1 + Workstation1->Workstation1
Human = Human0
Robot = Robot0
Worker = Worker0 + Robot0 + Human0
no Material
no Material' --loop state
Component = Component0 + Component1 + Component2
workstation = Component1->Workstation0
Product = Component0 + Component1 + Component2
parts = Component0->Component0 + Component1->Component2 + Component2->Component1 + Component2->Component2
begin = Workstation1
end = Workstation1
Dangerous = Component2
inv4[]
}}}
}
run test13 for 3 but 1 steps
pred test14 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Worker0, Human0: Worker {some disj Material1, Material0: Product {
Workstation = Workstation0 + Workstation1
workers = Workstation0->Worker0
succ = Workstation0->Workstation1 + Workstation1->Workstation1
Human = Human0
Robot = Robot0
Worker = Worker0 + Robot0 + Human0
Material = Material0 + Material1
no Component
no workstation
no Component' --loop state
Product = Material0 + Material1
no parts
begin = Workstation1
end = Workstation1
Dangerous = Material1
inv4[]
}}}
}
run test14 for 3 but 1 steps
pred test15 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Human0, Human1: Worker {some disj Component1, Component2, Component0: Product {
Workstation = Workstation0 + Workstation1
workers = Workstation0->Robot0
succ = Workstation0->Workstation1 + Workstation1->Workstation1
Human = Human0 + Human1
Robot = Robot0
Worker = Robot0 + Human0 + Human1
no Material
no Material' --loop state
Component = Component0 + Component1 + Component2
workstation = Component0->Workstation0 + Component1->Workstation0 + Component2->Workstation0
Product = Component0 + Component1 + Component2
parts = Component0->Component0 + Component0->Component1 + Component0->Component2 + Component1->Component0 + Component1->Component1 + Component1->Component2 + Component2->Component0 + Component2->Component1 + Component2->Component2
begin = Workstation1
end = Workstation1
Dangerous = Component2
inv4[]
}}}
}
run test15 for 3 but 1 steps
pred test16 {
some disj Workstation1, Workstation0: Workstation {some disj Robot1, Robot0, Worker0: Worker {some disj Component1, Component2, Component0: Product {
Workstation = Workstation0 + Workstation1
workers = Workstation0->Worker0
succ = Workstation0->Workstation1 + Workstation1->Workstation1
no Human
no Human' --loop state
Robot = Robot0 + Robot1
Worker = Worker0 + Robot0 + Robot1
no Material
no Material' --loop state
Component = Component0 + Component1 + Component2
workstation = Component0->Workstation0 + Component1->Workstation0 + Component2->Workstation0
Product = Component0 + Component1 + Component2
parts = Component0->Component0 + Component0->Component1 + Component0->Component2 + Component1->Component0 + Component1->Component1 + Component1->Component2 + Component2->Component0 + Component2->Component1 + Component2->Component2
begin = Workstation1
end = Workstation1
Dangerous = Component2
inv4[]
}}}
}
run test16 for 3 but 1 steps
pred test17 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Worker0, Human0: Worker {some disj Material1, Material0, Component0: Product {
Workstation = Workstation0 + Workstation1
workers = Workstation1->Worker0
succ = Workstation0->Workstation1 + Workstation1->Workstation1
Human = Human0
Robot = Robot0
Worker = Worker0 + Robot0 + Human0
Material = Material0 + Material1
Component = Component0
no workstation
Product = Material0 + Material1 + Component0
parts = Material0->Component0 + Material1->Component0 + Component0->Component0
begin = Workstation1
end = Workstation1
Dangerous = Material1 + Component0
inv4[]
}}}
}
run test17 for 3 but 1 steps
pred test18 {
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
workstation = Component0->Workstation1 + Component1->Workstation0 + Component2->Workstation0
Product = Component0 + Component1 + Component2
parts = Component0->Component0 + Component0->Component1 + Component0->Component2 + Component1->Component0 + Component1->Component1 + Component2->Component0 + Component2->Component1 + Component2->Component2
begin = Workstation1
end = Workstation1
no Dangerous
no Dangerous' --loop state
inv4[]
}}}
}
run test18 for 3 but 1 steps
pred test19 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Human0: Worker {some disj Material0, Component0: Product {
Workstation = Workstation0 + Workstation1
no workers
succ = Workstation0->Workstation1 + Workstation1->Workstation1
Human = Human0
Robot = Robot0
Worker = Robot0 + Human0
Material = Material0
Component = Component0
no workstation
Product = Material0 + Component0
parts = Material0->Component0 + Component0->Component0
begin = Workstation1
end = Workstation1
Dangerous = Component0
inv4[]
}}}
}
run test19 for 3 but 1 steps
pred test20 {
some disj Workstation1, Workstation0: Workstation {some disj Human0, Human1, Human2: Worker {some disj Component1, Component2, Component0: Product {
Workstation = Workstation0 + Workstation1
workers = Workstation0->Human1 + Workstation1->Human0
succ = Workstation0->Workstation1 + Workstation1->Workstation1
Human = Human0 + Human1 + Human2
no Robot
no Robot' --loop state
Worker = Human0 + Human1 + Human2
no Material
no Material' --loop state
Component = Component0 + Component1 + Component2
workstation = Component0->Workstation0 + Component1->Workstation0 + Component2->Workstation0
Product = Component0 + Component1 + Component2
parts = Component0->Component0 + Component0->Component1 + Component0->Component2 + Component1->Component0 + Component1->Component1 + Component1->Component2 + Component2->Component0 + Component2->Component1 + Component2->Component2
begin = Workstation1
end = Workstation1
Dangerous = Component2
inv4[]
}}}
}
run test20 for 3 but 1 steps
pred test21 {
some disj Workstation1, Workstation0: Workstation {some disj Robot1, Robot0, Robot2: Worker {some disj Component1, Component2, Component0: Product {
Workstation = Workstation0 + Workstation1
workers = Workstation0->Robot1 + Workstation1->Robot0
succ = Workstation0->Workstation1 + Workstation1->Workstation1
no Human
no Human' --loop state
Robot = Robot0 + Robot1 + Robot2
Worker = Robot0 + Robot1 + Robot2
no Material
no Material' --loop state
Component = Component0 + Component1 + Component2
workstation = Component0->Workstation0 + Component1->Workstation0 + Component2->Workstation0
Product = Component0 + Component1 + Component2
parts = Component0->Component0 + Component0->Component1 + Component0->Component2 + Component1->Component0 + Component1->Component1 + Component1->Component2 + Component2->Component0 + Component2->Component1 + Component2->Component2
begin = Workstation1
end = Workstation1
Dangerous = Component2
inv4[]
}}}
}
run test21 for 3 but 1 steps
pred test22 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Worker0, Human0: Worker {some disj Component1, Component2, Component0: Product {
Workstation = Workstation0 + Workstation1
no workers
succ = Workstation0->Workstation1 + Workstation1->Workstation1
Human = Human0
Robot = Robot0
Worker = Worker0 + Robot0 + Human0
no Material
no Material' --loop state
Component = Component0 + Component1 + Component2
workstation = Component0->Workstation0 + Component1->Workstation0 + Component1->Workstation1 + Component2->Workstation0 + Component2->Workstation1
Product = Component0 + Component1 + Component2
parts = Component0->Component0 + Component0->Component1 + Component0->Component2 + Component1->Component0 + Component1->Component1 + Component2->Component0 + Component2->Component1 + Component2->Component2
begin = Workstation1
end = Workstation1
Dangerous = Component2
inv4[]
}}}
}
run test22 for 3 but 1 steps
pred test23 {
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
parts = Component0->Component0 + Component0->Component1 + Component0->Component2 + Component1->Component0 + Component1->Component1 + Component1->Component2 + Component2->Component0 + Component2->Component1 + Component2->Component2
begin = Workstation1
end = Workstation1
Dangerous = Component2
inv4[]
}}}
}
run test23 for 3 but 1 steps
pred test24 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Worker0, Human0: Worker {some disj Component1, Component2, Component0: Product {
Workstation = Workstation0 + Workstation1
workers = Workstation1->Worker0 + Workstation1->Robot0
succ = Workstation0->Workstation1 + Workstation1->Workstation1
Human = Human0
Robot = Robot0
Worker = Worker0 + Robot0 + Human0
no Material
no Material' --loop state
Component = Component0 + Component1 + Component2
workstation = Component0->Workstation0 + Component1->Workstation0 + Component2->Workstation0
Product = Component0 + Component1 + Component2
parts = Component0->Component0 + Component0->Component1 + Component1->Component0 + Component1->Component1 + Component1->Component2 + Component2->Component0 + Component2->Component1
begin = Workstation1
end = Workstation1
Dangerous = Component2
inv4[]
}}}
}
run test24 for 3 but 1 steps
pred test25 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Worker0: Worker {some disj Material1, Material0, Component0: Product {
Workstation = Workstation0 + Workstation1
no workers
succ = Workstation0->Workstation1 + Workstation1->Workstation1
no Human
no Human' --loop state
Robot = Robot0
Worker = Worker0 + Robot0
Material = Material0 + Material1
Component = Component0
no workstation
Product = Material0 + Material1 + Component0
parts = Material0->Component0 + Material1->Component0 + Component0->Component0
begin = Workstation1
end = Workstation1
Dangerous = Component0
inv4[]
}}}
}
run test25 for 3 but 1 steps
pred test26 {
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
workstation = Component0->Workstation1 + Component1->Workstation0 + Component2->Workstation0
Product = Component0 + Component1 + Component2
parts = Component0->Component2 + Component1->Component0 + Component1->Component2 + Component2->Component1
begin = Workstation1
end = Workstation1
Dangerous = Component2
inv4[]
}}}
}
run test26 for 3 but 1 steps
pred test27 {
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
workstation = Component0->Workstation0 + Component1->Workstation1 + Component2->Workstation0
Product = Component0 + Component1 + Component2
parts = Component0->Component1 + Component0->Component2 + Component1->Component2 + Component2->Component0 + Component2->Component2
begin = Workstation1
end = Workstation1
Dangerous = Component1 + Component2
inv4[]
}}}
}
run test27 for 3 but 1 steps
pred test28 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Worker0, Human0: Worker {some disj Material1, Material0, Component0: Product {
Workstation = Workstation0 + Workstation1
workers = Workstation1->Worker0
succ = Workstation0->Workstation1 + Workstation1->Workstation1
Human = Human0
Robot = Robot0
Worker = Worker0 + Robot0 + Human0
Material = Material0 + Material1
Component = Component0
workstation = Component0->Workstation0
Product = Material0 + Material1 + Component0
parts = Material0->Component0 + Material1->Component0 + Component0->Component0
begin = Workstation1
end = Workstation1
Dangerous = Component0
inv4[]
}}}
}
run test28 for 3 but 1 steps
pred test29 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Worker0, Human0: Worker {some disj Material0, Component1, Component0: Product {
Workstation = Workstation0 + Workstation1
workers = Workstation0->Worker0 + Workstation0->Robot0
succ = Workstation0->Workstation1 + Workstation1->Workstation1
Human = Human0
Robot = Robot0
Worker = Worker0 + Robot0 + Human0
Material = Material0
Component = Component0 + Component1
workstation = Component0->Workstation0 + Component1->Workstation0
Product = Material0 + Component0 + Component1
parts = Material0->Component0 + Material0->Component1 + Component0->Component0 + Component0->Component1 + Component1->Component0 + Component1->Component1
begin = Workstation1
end = Workstation1
Dangerous = Component0 + Component1
inv4[]
}}}
}
run test29 for 3 but 1 steps
pred test30 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Human0: Worker {some disj Component1, Component2, Component0: Product {
Workstation = Workstation0 + Workstation1
no workers
succ = Workstation0->Workstation1 + Workstation1->Workstation1
Human = Human0
Robot = Robot0
Worker = Robot0 + Human0
no Material
no Material' --loop state
Component = Component0 + Component1 + Component2
workstation = Component0->Workstation0 + Component1->Workstation0 + Component2->Workstation0
Product = Component0 + Component1 + Component2
parts = Component0->Component0 + Component0->Component1 + Component0->Component2 + Component1->Component0 + Component1->Component1 + Component1->Component2 + Component2->Component0 + Component2->Component1 + Component2->Component2
begin = Workstation1
end = Workstation1
Dangerous = Component2
inv4[]
}}}
}
run test30 for 3 but 1 steps
pred test31 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Worker0, Human0: Worker {some disj Material0, Component1, Component0: Product {
Workstation = Workstation0 + Workstation1
workers = Workstation0->Worker0 + Workstation0->Robot0
succ = Workstation0->Workstation1 + Workstation1->Workstation1
Human = Human0
Robot = Robot0
Worker = Worker0 + Robot0 + Human0
Material = Material0
Component = Component0 + Component1
no workstation
Product = Material0 + Component0 + Component1
parts = Material0->Material0 + Material0->Component0 + Material0->Component1 + Component0->Component0 + Component0->Component1 + Component1->Component0 + Component1->Component1
begin = Workstation1
end = Workstation1
Dangerous = Component1
inv4[]
}}}
}
run test31 for 3 but 1 steps
pred test32 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Worker0, Human0: Worker {some disj Material1, Material0, Component0: Product {
Workstation = Workstation0 + Workstation1
no workers
succ = Workstation0->Workstation1 + Workstation1->Workstation1
Human = Human0
Robot = Robot0
Worker = Worker0 + Robot0 + Human0
Material = Material0 + Material1
Component = Component0
no workstation
Product = Material0 + Material1 + Component0
parts = Material0->Component0 + Material1->Component0 + Component0->Material1 + Component0->Component0
begin = Workstation1
end = Workstation1
Dangerous = Material1
inv4[]
}}}
}
run test32 for 3 but 1 steps
pred test33 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Worker0, Human0: Worker {some disj Material0, Component1, Component0: Product {
Workstation = Workstation0 + Workstation1
workers = Workstation1->Worker0 + Workstation1->Robot0
succ = Workstation0->Workstation1 + Workstation1->Workstation1
Human = Human0
Robot = Robot0
Worker = Worker0 + Robot0 + Human0
Material = Material0
Component = Component0 + Component1
no workstation
Product = Material0 + Component0 + Component1
parts = Material0->Component0 + Material0->Component1 + Component0->Material0 + Component0->Component0 + Component0->Component1 + Component1->Component0 + Component1->Component1
begin = Workstation1
end = Workstation1
Dangerous = Component1
inv4[]
}}}
}
run test33 for 3 but 1 steps
pred test34 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Worker0, Human0: Worker {some disj Material2, Material1, Material0: Product {
Workstation = Workstation0 + Workstation1
workers = Workstation1->Worker0
succ = Workstation0->Workstation1 + Workstation1->Workstation1
Human = Human0
Robot = Robot0
Worker = Worker0 + Robot0 + Human0
Material = Material0 + Material1 + Material2
no Component
no workstation
no Component' --loop state
Product = Material0 + Material1 + Material2
parts = Material0->Material2 + Material1->Material0 + Material1->Material1 + Material2->Material1
begin = Workstation1
end = Workstation1
Dangerous = Material2
inv4[]
}}}
}
run test34 for 3 but 1 steps
pred test35 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Worker0, Human0: Worker {some disj Material0: Product {
Workstation = Workstation0 + Workstation1
workers = Workstation1->Worker0 + Workstation1->Robot0
succ = Workstation0->Workstation1 + Workstation1->Workstation1
Human = Human0
Robot = Robot0
Worker = Worker0 + Robot0 + Human0
Material = Material0
no Component
no workstation
no Component' --loop state
Product = Material0
parts = Material0->Material0
begin = Workstation1
end = Workstation1
Dangerous = Material0
inv4[]
}}}
}
run test35 for 3 but 1 steps
pred test36 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Worker0, Human0: Worker {some disj Material0: Product {
Workstation = Workstation0 + Workstation1
workers = Workstation1->Worker0 + Workstation1->Robot0
succ = Workstation0->Workstation1 + Workstation1->Workstation1
Human = Human0
Robot = Robot0
Worker = Worker0 + Robot0 + Human0
Material = Material0
no Component
no workstation
no Component' --loop state
Product = Material0
parts = Material0->Material0
begin = Workstation1
end = Workstation1
no Dangerous
no Dangerous' --loop state
inv4[]
}}}
}
run test36 for 3 but 1 steps
pred test37 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Worker0, Human0: Worker {some disj Component1, Component0: Product {
Workstation = Workstation0 + Workstation1
workers = Workstation0->Worker0 + Workstation0->Robot0
succ = Workstation0->Workstation1 + Workstation1->Workstation1
Human = Human0
Robot = Robot0
Worker = Worker0 + Robot0 + Human0
no Material
no Material' --loop state
Component = Component0 + Component1
workstation = Component0->Workstation0 + Component1->Workstation0
Product = Component0 + Component1
parts = Component0->Component0 + Component0->Component1 + Component1->Component0 + Component1->Component1
begin = Workstation1
end = Workstation1
Dangerous = Component1
inv4[]
}}}
}
run test37 for 3 but 1 steps
pred test38 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Human0: Worker {some disj Material0, Component1, Component0: Product {
Workstation = Workstation0 + Workstation1
no workers
succ = Workstation0->Workstation1 + Workstation1->Workstation1
Human = Human0
Robot = Robot0
Worker = Robot0 + Human0
Material = Material0
Component = Component0 + Component1
workstation = Component0->Workstation0 + Component1->Workstation0
Product = Material0 + Component0 + Component1
parts = Material0->Component0 + Material0->Component1 + Component0->Component0 + Component0->Component1 + Component1->Material0 + Component1->Component0 + Component1->Component1
begin = Workstation1
end = Workstation1
Dangerous = Component0 + Component1
inv4[]
}}}
}
run test38 for 3 but 1 steps
pred test39 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Human0: Worker {some disj Material0, Component1, Component0: Product {
Workstation = Workstation0 + Workstation1
no workers
succ = Workstation0->Workstation1 + Workstation1->Workstation1
Human = Human0
Robot = Robot0
Worker = Robot0 + Human0
Material = Material0
Component = Component0 + Component1
workstation = Component0->Workstation0 + Component1->Workstation0
Product = Material0 + Component0 + Component1
parts = Material0->Component0 + Material0->Component1 + Component0->Component0 + Component0->Component1 + Component1->Component0 + Component1->Component1
begin = Workstation1
end = Workstation1
Dangerous = Component0 + Component1
inv4[]
}}}
}
run test39 for 3 but 1 steps
pred test40 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Worker0, Human0: Worker {some disj Material1, Material0, Component0: Product {
Workstation = Workstation0 + Workstation1
workers = Workstation0->Worker0 + Workstation0->Robot0
succ = Workstation0->Workstation1 + Workstation1->Workstation1
Human = Human0
Robot = Robot0
Worker = Worker0 + Robot0 + Human0
Material = Material0 + Material1
Component = Component0
workstation = Component0->Workstation0
Product = Material0 + Material1 + Component0
parts = Material0->Component0 + Material1->Component0 + Component0->Component0
begin = Workstation1
end = Workstation1
Dangerous = Material0 + Material1 + Component0
inv4[]
}}}
}
run test40 for 3 but 1 steps
pred test41 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Human0: Worker {some disj Material0: Product {
Workstation = Workstation0 + Workstation1
no workers
succ = Workstation0->Workstation1 + Workstation1->Workstation1
Human = Human0
Robot = Robot0
Worker = Robot0 + Human0
Material = Material0
no Component
no workstation
no Component' --loop state
Product = Material0
parts = Material0->Material0
begin = Workstation1
end = Workstation1
no Dangerous
no Dangerous' --loop state
inv4[]
}}}
}
run test41 for 3 but 1 steps
pred test42 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Worker0, Human0: Worker {some disj Material0, Component1, Component0: Product {
Workstation = Workstation0 + Workstation1
workers = Workstation1->Worker0 + Workstation1->Robot0
succ = Workstation0->Workstation1 + Workstation1->Workstation1
Human = Human0
Robot = Robot0
Worker = Worker0 + Robot0 + Human0
Material = Material0
Component = Component0 + Component1
workstation = Component0->Workstation0 + Component1->Workstation0
Product = Material0 + Component0 + Component1
parts = Material0->Component0 + Material0->Component1 + Component0->Component0 + Component0->Component1 + Component1->Component0 + Component1->Component1
begin = Workstation1
end = Workstation1
Dangerous = Component0 + Component1
inv4[]
}}}
}
run test42 for 3 but 1 steps
pred test43 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Worker0, Human0: Worker {some disj Material0, Component1, Component0: Product {
Workstation = Workstation0 + Workstation1
workers = Workstation1->Worker0 + Workstation1->Robot0
succ = Workstation0->Workstation1 + Workstation1->Workstation1
Human = Human0
Robot = Robot0
Worker = Worker0 + Robot0 + Human0
Material = Material0
Component = Component0 + Component1
workstation = Component0->Workstation1 + Component1->Workstation0
Product = Material0 + Component0 + Component1
parts = Material0->Component0 + Material0->Component1 + Component0->Component0 + Component0->Component1 + Component1->Material0 + Component1->Component0 + Component1->Component1
begin = Workstation1
end = Workstation1
Dangerous = Component0 + Component1
inv4[]
}}}
}
run test43 for 3 but 1 steps
pred test44 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Worker0, Human0: Worker {some disj Material1, Material0: Product {
Workstation = Workstation0 + Workstation1
workers = Workstation1->Worker0
succ = Workstation0->Workstation1 + Workstation1->Workstation1
Human = Human0
Robot = Robot0
Worker = Worker0 + Robot0 + Human0
Material = Material0 + Material1
no Component
no workstation
no Component' --loop state
Product = Material0 + Material1
no parts
begin = Workstation1
end = Workstation1
Dangerous = Material0 + Material1
inv4[]
}}}
}
run test44 for 3 but 1 steps
pred test45 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Worker0, Human0: Worker {some disj Material0: Product {
Workstation = Workstation0 + Workstation1
no workers
succ = Workstation0->Workstation1 + Workstation1->Workstation1
Human = Human0
Robot = Robot0
Worker = Worker0 + Robot0 + Human0
Material = Material0
no Component
no workstation
no Component' --loop state
Product = Material0
no parts
begin = Workstation1
end = Workstation1
Dangerous = Material0
inv4[]
}}}
}
run test45 for 3 but 1 steps
pred test46 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Worker0, Human0: Worker {some disj Material0, Component0: Product {
Workstation = Workstation0 + Workstation1
workers = Workstation0->Worker0 + Workstation0->Robot0
succ = Workstation0->Workstation1 + Workstation1->Workstation1
Human = Human0
Robot = Robot0
Worker = Worker0 + Robot0 + Human0
Material = Material0
Component = Component0
workstation = Component0->Workstation0
Product = Material0 + Component0
parts = Material0->Component0 + Component0->Component0
begin = Workstation1
end = Workstation1
Dangerous = Component0
inv4[]
}}}
}
run test46 for 3 but 1 steps
pred test47 {
some disj Workstation2, Workstation1, Workstation0: Workstation {some disj Robot0, Human0: Worker {some disj Material0, Component1, Component0: Product {
Workstation = Workstation0 + Workstation1 + Workstation2
no workers
succ = Workstation1->Workstation2 + Workstation2->Workstation2
Human = Human0
Robot = Robot0
Worker = Robot0 + Human0
Material = Material0
Component = Component0 + Component1
workstation = Component1->Workstation1
Product = Material0 + Component0 + Component1
parts = Material0->Component0 + Material0->Component1 + Component0->Component0 + Component0->Component1 + Component1->Component0 + Component1->Component1
begin = Workstation2
end = Workstation1
Dangerous = Component0 + Component1
inv4[]
}}}
}
run test47 for 3 but 1 steps
