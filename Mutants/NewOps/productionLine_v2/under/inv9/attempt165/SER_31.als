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
((all w: (one Workstation) {
((Robot->w) in (*succ))
}) && (all w1: (one Workstation) {
(some w2: (one Workstation) {
(((w1->w2) in succ) || (w1 in end))
})
}) && (all w: (one Workstation) {
(!((end->w) in succ))
}))
}





