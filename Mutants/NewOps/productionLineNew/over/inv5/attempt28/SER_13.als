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
pred inv5[] {
(all w1,w2: (one end) {
(all x1,x2: (one Workstation) {
(((w1 in (x1.workers)) && (w2 in (x2.workers)) && (w1 != w2)) => (x1 != x2))
})
})
}





