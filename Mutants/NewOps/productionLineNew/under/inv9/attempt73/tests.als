
pred test1 {
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
some disj Workstation0: Workstation {some disj Robot0, Worker0, Human0: Worker {some disj Component1, Component2, Component0: Product {
Workstation = Workstation0
no workers
succ = Workstation0->Workstation0
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
run test2 for 3 but 1 steps
pred test3 {
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
parts = Component0->Component0 + Component0->Component2 + Component1->Component0 + Component2->Component2
begin = Workstation1
end = Workstation0
Dangerous = Component2
inv9[]
}}}
}
run test5 for 3 but 1 steps
pred test6 {
some disj Workstation0: Workstation {some disj Robot0, Human0: Worker {some disj Component1, Component2, Component0: Product {
Workstation = Workstation0
no workers
succ = Workstation0->Workstation0
Human = Human0
Robot = Robot0
Worker = Robot0 + Human0
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
end = Workstation0
Dangerous = Component2
inv9[]
}}}
}
run test7 for 3 but 1 steps
pred test8 {
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
no Dangerous
no Dangerous' --loop state
inv9[]
}}}
}
run test8 for 3 but 1 steps
pred test9 {
some disj Workstation2, Workstation1, Workstation0: Workstation {some disj Robot0, Human0: Worker {some disj Component1, Component2, Component0: Product {
Workstation = Workstation0 + Workstation1 + Workstation2
no workers
succ = Workstation2->Workstation2
Human = Human0
Robot = Robot0
Worker = Robot0 + Human0
no Material
no Material' --loop state
Component = Component0 + Component1 + Component2
workstation = Component1->Workstation0 + Component1->Workstation1 + Component2->Workstation1
Product = Component0 + Component1 + Component2
parts = Component0->Component0 + Component0->Component2 + Component1->Component0 + Component2->Component2
begin = Workstation2
end = Workstation2
Dangerous = Component2
inv9[]
}}}
}
run test9 for 3 but 1 steps
pred test10 {
some disj Workstation1, Workstation0: Workstation {some disj Robot1, Robot0, Human0: Worker {some disj Component1, Component2, Component0: Product {
Workstation = Workstation0 + Workstation1
workers = Workstation0->Robot0 + Workstation0->Robot1
succ = Workstation0->Workstation1 + Workstation1->Workstation1
Human = Human0
Robot = Robot0 + Robot1
Worker = Robot0 + Robot1 + Human0
no Material
no Material' --loop state
Component = Component0 + Component1 + Component2
workstation = Component0->Workstation1 + Component1->Workstation0 + Component2->Workstation1
Product = Component0 + Component1 + Component2
parts = Component0->Component0 + Component0->Component1 + Component2->Component0 + Component2->Component2
begin = Workstation1
end = Workstation0
Dangerous = Component2
inv9[]
}}}
}
run test10 for 3 but 1 steps
