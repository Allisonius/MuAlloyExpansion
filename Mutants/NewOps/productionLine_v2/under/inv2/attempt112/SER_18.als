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
((all w1,w2: (one Human) {
(all ws1,ws2: (one Workstation) {
(((ws1 != ws2) && (w1 in (ws1.workers)) && (w2 in (ws2.workers))) => (w1 != w2))
})
}) && (all w: (one Worker) {
(w in (Workstation.workers))
}))
}





