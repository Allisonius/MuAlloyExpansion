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
((all wb: (one Workstation) {
(one w: (one Worker) {
(Worker in (wb.workers))
})
}) && (no wb: (one Workstation) {
(all w: (one Worker) {
(w in (wb.workers))
})
}))
}





