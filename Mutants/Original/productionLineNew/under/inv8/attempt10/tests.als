
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
parts = Component0->Component2 + Component1->Component0 + Component2->Component2
begin = Workstation1
end = Workstation1
Dangerous = Component2
inv8[]
}}}
}
run test1 for 3 but 1 steps
pred test2 {
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
inv8[]
}}}
}
run test2 for 3 but 1 steps
pred test3 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Worker0, Human0: Worker {some disj Material2, Material1, Material0: Product {
Workstation = Workstation0 + Workstation1
workers = Workstation0->Worker0 + Workstation0->Robot0
succ = Workstation0->Workstation1 + Workstation1->Workstation1
Human = Human0
Robot = Robot0
Worker = Worker0 + Robot0 + Human0
Material = Material0 + Material1 + Material2
no Component
no workstation
no Component' --loop state
Product = Material0 + Material1 + Material2
parts = Material0->Material1 + Material1->Material1 + Material2->Material0
begin = Workstation1
end = Workstation1
Dangerous = Material2
inv8[]
}}}
}
run test3 for 3 but 1 steps
pred test4 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Worker0, Human0: Worker {some disj Component1, Component2, Component0: Product {
Workstation = Workstation0 + Workstation1
workers = Workstation0->Worker0 + Workstation1->Robot0
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
inv8[]
}}}
}
run test4 for 3 but 1 steps
pred test5 {
some disj Workstation1, Workstation0: Workstation {some disj Human0, Human1, Human2: Worker {some disj Component1, Component2, Component0: Product {
Workstation = Workstation0 + Workstation1
workers = Workstation1->Human1
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
parts = Component0->Component2 + Component1->Component0 + Component1->Component1
begin = Workstation1
end = Workstation1
Dangerous = Component2
inv8[]
}}}
}
run test5 for 3 but 1 steps
pred test6 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Worker0: Worker {some disj Material0, Component1, Component0: Product {
Workstation = Workstation0 + Workstation1
workers = Workstation1->Worker0
succ = Workstation0->Workstation1 + Workstation1->Workstation1
no Human
no Human' --loop state
Robot = Robot0
Worker = Worker0 + Robot0
Material = Material0
Component = Component0 + Component1
workstation = Component0->Workstation0 + Component1->Workstation0
Product = Material0 + Component0 + Component1
parts = Material0->Component1 + Component0->Material0 + Component0->Component0
begin = Workstation1
end = Workstation1
Dangerous = Material0 + Component1
inv8[]
}}}
}
run test6 for 3 but 1 steps
pred test7 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Worker0, Worker1: Worker {some disj Component1, Component2, Component0: Product {
Workstation = Workstation0 + Workstation1
workers = Workstation0->Worker0 + Workstation0->Worker1
succ = Workstation0->Workstation1 + Workstation1->Workstation1
no Human
no Human' --loop state
Robot = Robot0
Worker = Worker0 + Worker1 + Robot0
no Material
no Material' --loop state
Component = Component0 + Component1 + Component2
workstation = Component0->Workstation0 + Component1->Workstation0 + Component2->Workstation0
Product = Component0 + Component1 + Component2
parts = Component0->Component2 + Component1->Component0 + Component1->Component1
begin = Workstation1
end = Workstation1
Dangerous = Component2
inv8[]
}}}
}
run test7 for 3 but 1 steps
