module unknown
open util/integer [] as integer
sig Workstation {
workers: (set Worker),
succ: (set Workstation)
}
one sig begin in Workstation {}
one sig end in Workstation {}
sig Worker {}
sig Human extends Worker {}
sig Robot extends Worker {}
abstract sig Product {
parts: (set Product)
}
sig Material extends Product {}
sig Component extends Product {
workstation: (set Workstation)
}
sig Dangerous in Product {}
pred inv4[] {
(all c: (one Component),m: (one Material),p: (one Product),p1: (one Product),p2: (one Product),p3: (one Dangerous) {
((c in Product) && ((p->p1) in parts) && (m in Product) && ((p2->p3) !in parts))
})
}





