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
(all ws: (one Workstation) {
(((ws in begin) => (no (succ.ws))) || ((ws in end) <=> (no (ws.succ))) || (some ((ws.(*succ)) & end)) || ((ws in begin) && (ws in end)))
})
}





