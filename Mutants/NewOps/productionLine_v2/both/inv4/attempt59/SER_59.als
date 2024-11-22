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
((all c: (one Component) {
(some p: (one Product) {
((c->p) in parts)
})
}) && (all m,p: (one Component) {
(((m in Material) && (p in Product)) => (!((p->m) in parts)))
}))
}





