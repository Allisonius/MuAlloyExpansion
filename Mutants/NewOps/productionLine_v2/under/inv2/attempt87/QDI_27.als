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
pred inv2[] {
(all w: (one Workstation) {
(some w1: (Worker - Robot) {
(((w->w1) in workers) && (one w2: (one Workstation) {
((w2->w1) in workers)
}))
})
})
}





