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
((all wb: (one Workstation) {
(some r: (one Robot) {
(some h: (one Dangerous) {
((r in (wb.workers)) => (h !in (wb.workers)))
})
})
}) && (all wb: (one Workstation) {
(some r: (one Robot) {
(some h: (one Human) {
((h in (wb.workers)) => (r !in (wb.workers)))
})
})
}))
}





