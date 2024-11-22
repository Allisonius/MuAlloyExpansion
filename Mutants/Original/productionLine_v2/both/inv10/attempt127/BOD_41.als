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
(all c0,c1: (one Component) {
(all w0,w1: (one Workstation) {
((((c0->w0) in workstation) && ((c1->w1) in workstation) && (c1 in (c0.(^parts)))) => (w0 in w1))
})
})
}





