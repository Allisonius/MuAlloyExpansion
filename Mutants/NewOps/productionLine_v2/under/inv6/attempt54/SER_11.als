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
pred inv6[] {
((all c0,c1: (one Material) {
(((c0->c1) in parts) => (c0 != c1))
}) && (all c0,c1: (one Component) {
(((c0->c1) in parts) => ((c1->c0) !in parts))
}))
}





