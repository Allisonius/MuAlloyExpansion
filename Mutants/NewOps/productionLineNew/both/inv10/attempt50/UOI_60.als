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
pred inv10[] {
(all c1,c2: (one Component) {
(all ws1,ws2: (one Workstation) {
(((ws1 in (c1.workstation)) && (ws2 in (c2.workstation)) && (c2 in (c1.(~(^parts))))) => (ws1 in (ws2.(^succ))))
})
})
}





