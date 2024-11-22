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
pred inv9[] {
((begin !in (Workstation.succ)) && (no (end.succ)) && (all ws: (one Workstation) {
(lone (ws.succ))
}) && ((Workstation - begin) in (begin.(^succ))) && (all ws: (one Workstation) {
(ws !in (ws.succ))
}) && (all ws: (one (Robot - end)) {
(end in (ws.succ))
}))
}





