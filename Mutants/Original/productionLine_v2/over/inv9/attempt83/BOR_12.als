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
((all w0,w1: (one Workstation) {
(((w0 in begin) && (w0 in w1)) => (w1 in (w0.(^parts))))
}) && (all w: (one Workstation) {
(w !in (w.(^succ)))
}) && (all w0: (one Workstation) {
((w0 in end) => (all w1: (one Workstation) {
((w0->w1) !in succ)
}))
}))
}





