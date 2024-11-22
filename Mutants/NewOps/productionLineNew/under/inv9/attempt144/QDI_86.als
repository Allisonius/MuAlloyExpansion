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
((all wc: (one Workstation) {
(wc !in (wc.(^succ)))
}) && (all wc: (one Workstation) {
(((wc in begin) && ((#(wc.succ)) = 1) && (all wc2: (Workstation - end) {
(wc2 in (wc.(^succ)))
})) || ((wc in end) && ((wc.succ) = none)) || ((wc !in begin) && (wc !in end) && ((#(wc.succ)) = 1)))
}))
}





