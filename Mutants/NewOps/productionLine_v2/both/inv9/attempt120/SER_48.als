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
((all disj ws1,ws2: (one Workstation) {
(((ws1->ws2) in succ) => (!(some ws3: (one Robot) {
((ws3->ws2) in succ)
})))
}) && (all disj ws1,ws2: (one Workstation) {
((((ws1->ws2) in succ) && (!(some ws3: (one Workstation) {
((ws3->ws1) in succ)
}))) => (ws1 in begin))
}))
}





