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
pred inv3[] {
((all a: (one Component) {
(some b: (Workstation - end) {
((a->b) in workstation)
})
}) && (all a1,a2: (one Workstation) {
((some b: (one Component) {
(((a1->b) in workstation) && ((a2->b) in workstation))
}) => (a1 = a2))
}))
}





