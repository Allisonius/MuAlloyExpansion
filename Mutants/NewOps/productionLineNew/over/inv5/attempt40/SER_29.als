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
((all w: (one Workstation),r: (one Dangerous) {
(one h: (one Human) {
((h in (w.workers)) => (r !in (w.workers)))
})
}) && (all w: (one Workstation),h: (one Human) {
(one r: (one Robot) {
((r in (w.workers)) => (h !in (w.workers)))
})
}))
}





