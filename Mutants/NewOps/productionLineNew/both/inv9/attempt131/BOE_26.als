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
((all x: (one Workstation) {
((x.(^succ)) !in x)
}) && (all x,y: (one Workstation) {
(((no (succ.x)) && (no (y.succ))) => (x != y))
}) && (all x: (one Workstation) {
((x in begin) => (x !in end))
}) && (all x: (one Workstation) {
((x in end) => (x !in begin))
}))
}





