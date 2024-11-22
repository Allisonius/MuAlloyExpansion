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
((no (end.succ)) && (no W: (one Workstation) {
(W in (W.succ))
}) && (no W: (one Workstation) {
(begin in (W.succ))
}) && (all W: (one Workstation) {
(one (W.succ))
}) && (all W: (one (Workstation - begin)) {
(one W2: (one ((Workstation - begin) - W)) {
(W in (W2.succ))
})
}))
}





