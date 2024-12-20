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
((some var123456 : Workstation { ((#((*succ).end)) = (#var123456))}) && ((#(begin.(*succ))) = (#Workstation)) && (all w: (one Workstation) {
((#(w.succ)) = 1)
}))
}





