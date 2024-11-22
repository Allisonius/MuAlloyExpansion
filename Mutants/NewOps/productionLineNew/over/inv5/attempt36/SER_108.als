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
(all x: (one Workstation) {
(all y,z: (one Worker) {
(((y in (x.workers)) && (z in (x.workers))) => (((y in Human) && (z in Human)) || ((y in Robot) && (z in Material))))
})
})
}





