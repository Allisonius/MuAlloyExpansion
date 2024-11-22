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
((all w1: (one (Workstation - end)) {
(one (w1.(*succ)))
}) && (all w1: (one (Workstation - begin)) {
(one (succ.w1))
}) && (Workstation in (begin.(*succ))))
}





