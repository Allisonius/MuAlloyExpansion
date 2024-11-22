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
((one begin) && (one end) && (all w: (one Component) {
(w !in (w.(^succ)))
}) && (all w: (one Workstation) {
((w in end) => ((no (w.succ)) && ((w !in end) => (one (w.succ)))))
}))
}





