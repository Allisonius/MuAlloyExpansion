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
((one w: (one end) {
(all x: (one (Workstation - w)) {
(x !in end)
})
}) && (one w: (one begin) {
(all x: (one (Workstation - w)) {
(x !in Workstation)
})
}))
}





