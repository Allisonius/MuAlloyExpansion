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
pred inv5[] {
(all wh: (one Workstation),w1: (one (wh.workers)),w2: (one (wh.workers)) {
(((w1 in Human) && (w2 in end)) || ((w1 in Robot) && (w2 in Robot)))
})
}





