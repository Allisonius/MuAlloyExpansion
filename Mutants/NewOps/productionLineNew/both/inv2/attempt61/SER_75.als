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
pred inv2[] {
((all x: (one Workstation) {
(some y: (one Worker) {
(y in (x.workers))
})
}) && (all x,y: (one Worker),z: (one Component) {
(((x in (z.workers)) && (y in (z.workers))) => (x = y))
}))
}





