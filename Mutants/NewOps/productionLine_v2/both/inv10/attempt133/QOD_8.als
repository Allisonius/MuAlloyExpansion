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
pred inv10[] {
(all w1,w2: (one Workstation) {
(((w1 in (((Component)).workstation)) && (w2 in (((Component)).workstation)) && (((Component)) in (((Component)).(^parts)))) => (w1 in ((((Component)).workstation).(^succ))))
})
}





