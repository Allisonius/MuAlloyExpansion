
pred test1 {
some disj Workstation2, Workstation1, Workstation0: Workstation {some disj Robot0, Worker0: Worker {some disj Component1, Component2, Component0: Product {
Workstation = Workstation0 + Workstation1 + Workstation2
no workers
succ = Workstation1->Workstation1 + Workstation1->Workstation2 + Workstation2->Workstation0
no Human
no Human' --loop state
Robot = Robot0
Worker = Worker0 + Robot0
no Material
no Material' --loop state
Component = Component0 + Component1 + Component2
workstation = Component0->Workstation0 + Component0->Workstation2 + Component1->Workstation0 + Component1->Workstation2 + Component2->Workstation0 + Component2->Workstation2
Product = Component0 + Component1 + Component2
no parts
begin = Workstation2
end = Workstation1
no Dangerous
no Dangerous' --loop state
inv2[]
}}}
}
run test1 for 3 but 1 steps
pred test2 {
some disj Workstation1, Workstation0: Workstation {some disj Robot0, Worker0, Human0: Worker {some disj Component1, Component2, Component0: Product {
Workstation = Workstation0 + Workstation1
workers = Workstation0->Robot0 + Workstation1->Worker0
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
inv2[]
}}}
}
run test2 for 3 but 1 steps
pred test3 {
some disj Workstation0: Workstation {some disj Worker0, Worker1: Worker {some disj Component1, Component2, Component0: Product {
Workstation = Workstation0
no workers
succ = Workstation0->Workstation0
no Human
no Human' --loop state
no Robot
no Robot' --loop state
Worker = Worker0 + Worker1
no Material
no Material' --loop state
Component = Component0 + Component1 + Component2
workstation = Component0->Workstation0 + Component1->Workstation0
Product = Component0 + Component1 + Component2
parts = Component0->Component2 + Component1->Component0 + Component1->Component1
begin = Workstation0
end = Workstation0
Dangerous = Component2
inv2[]
}}}
}
run test3 for 3 but 1 steps
