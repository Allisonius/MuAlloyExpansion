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
((all c: (one Product) {
(c !in (c.parts))
}) && (all c: (one Component) {
(Dangerous !in (c.parts))
}) && (all c: (one Component) {
((c.parts) in Material)
}) && (all d: (one Dangerous) {
((d.parts) in Material)
}))
}





