
pred test1 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Worker0, Human0: Worker {some disj Component1, Component2, Component0: Product {
Workstation = Workstation0 + Workstation1
workers = Workstation0->Worker0 + Workstation0->Robot0 + Workstation0->Human0
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
some disj Workstation2, Workstation1, Workstation0: Workstation {some disj Robot1, Robot0, Worker0: Worker {some disj Component1, Component2, Component0: Product {
Workstation = Workstation0 + Workstation1 + Workstation2
workers = Workstation2->Worker0 + Workstation2->Robot1
succ = Workstation1->Workstation2 + Workstation2->Workstation2
no Human
no Human' --loop state
Robot = Robot0 + Robot1
Worker = Worker0 + Robot0 + Robot1
no Material
no Material' --loop state
Component = Component0 + Component1 + Component2
workstation = Component0->Workstation1 + Component1->Workstation0 + Component1->Workstation2 + Component2->Workstation0 + Component2->Workstation2
Product = Component0 + Component1 + Component2
parts = Component0->Component1 + Component0->Component2 + Component1->Component1 + Component2->Component2
begin = Workstation2
end = Workstation2
Dangerous = Component1 + Component2
inv8[]
}}}
}
run test3 for 3 but 1 steps
pred test4 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Human0, Human1: Worker {some disj Component1, Component2, Component0: Product {
Workstation = Workstation0 + Workstation1
workers = Workstation1->Robot0 + Workstation1->Human0
succ = Workstation0->Workstation1 + Workstation1->Workstation1
Human = Human0 + Human1
Robot = Robot0
Worker = Robot0 + Human0 + Human1
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
some disj Workstation2, Workstation1, Workstation0: Workstation {some disj Human0, Human1, Human2: Worker {some disj Component1, Component2, Component0: Product {
Workstation = Workstation0 + Workstation1 + Workstation2
workers = Workstation0->Human1 + Workstation0->Human2 + Workstation1->Human0
succ = Workstation1->Workstation2 + Workstation2->Workstation2
Human = Human0 + Human1 + Human2
no Robot
no Robot' --loop state
Worker = Human0 + Human1 + Human2
no Material
no Material' --loop state
Component = Component0 + Component1 + Component2
workstation = Component0->Workstation0 + Component0->Workstation2 + Component1->Workstation1 + Component2->Workstation0 + Component2->Workstation2
Product = Component0 + Component1 + Component2
parts = Component0->Component2 + Component1->Component0 + Component1->Component1
begin = Workstation2
end = Workstation1
Dangerous = Component1 + Component2
inv8[]
}}}
}
run test5 for 3 but 1 steps
