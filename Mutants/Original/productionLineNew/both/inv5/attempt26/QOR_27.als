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
((all ws: (one Workstation) {
(some w: (one Worker) {
(((w in Human) && (w in (ws.workers))) => ((ws.workers) !in Robot))
})
}) && (all ws: (one Workstation) {
(no w: (one Worker) {
(((w in Robot) && (w in (ws.workers))) => ((ws.workers) !in Human))
})
}))
}





