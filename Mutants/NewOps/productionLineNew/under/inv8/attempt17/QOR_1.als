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
pred inv8[] {
(no c: (one Component) {
(all h: (one Human) {
(all w: (one Workstation) {
(((w in (workstation.c)) && ((c.parts) in Dangerous)) => (h !in (w.workers)))
})
})
})
}





