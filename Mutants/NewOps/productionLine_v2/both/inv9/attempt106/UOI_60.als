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
(all w1,w2: (one Workstation) {
((((w1 in begin) && (w2 in end)) => ((some (w1.(*succ))) && (w1 !in (succ.Workstation)) && (no (w2.succ)))) || ((w1 = w2) && (w1 !in (w2.succ))))
})
}





