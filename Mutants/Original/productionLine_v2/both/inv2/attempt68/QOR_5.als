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
(some w: (one Workstation) {
(some w1: (one Worker) {
(((w->w1) in workers) && (one w2: (one Workstation) {
(all w3: (one Worker) {
((w2->w3) in workers)
})
}))
})
})
}





