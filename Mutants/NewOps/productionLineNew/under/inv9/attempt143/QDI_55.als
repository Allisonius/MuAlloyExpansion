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
((all ws: (one Workstation) {
(((ws.succ) = none) => (ws = end))
}) && (all ws: (Workstation & begin) {
(((succ.ws) = none) => (ws = begin))
}) && (all ws: (one Workstation) {
(((ws.succ) != none) => (all wr: (one Workstation) {
((wr in (ws.succ)) => (((wr.succ) = none) => (wr = end)))
}))
}))
}





