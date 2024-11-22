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
(lone p: (one Product),p1: (one Product) {
(((p in Component) => ((p1 in (p1.parts)) && (p != p1))) || ((p in Material) => ((p1 !in (p1.parts)) && (p != p1))))
})
}





