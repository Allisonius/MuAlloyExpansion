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
((all ws: (one Workstation) {
(some (ws.workers))
}) && (all ws,ws1: (one Workstation),w: (one end) {
((w in (ws.workers)) => (w !in (ws1.workers)))
}))
}





