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
((all w,wb: (one Workstation) {
(((wb in begin) && (w != wb)) => (w in (wb.(^succ))))
}) && (all w: (one Workstation) {
(w !in (w.(^succ)))
}) && (all w: (one Workstation) {
((w !in end) => (one we: (one Workstation) {
(some ws: (one Workstation) {
((we in (w.(^succ))) && (we in Dangerous) && (ws in (w.succ)) && (w != we))
})
}))
}))
}





