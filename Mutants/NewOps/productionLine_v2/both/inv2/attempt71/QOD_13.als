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
((all ws1,ws2: (one Workstation) {
(((ws1 != ws2) && (((Worker)) in (ws1.workers)) && (((Worker)) in (ws2.workers))) => (((Worker)) = ((Worker))))
}) && (all ws: (one Workstation) {
(Worker in (ws.workers))
}))
}





