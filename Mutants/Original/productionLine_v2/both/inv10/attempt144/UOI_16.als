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
(all disj w1,w2: (one Workstation),c1,c2: (one Component) {
((c2 in (c1.(*(^parts)))) => ((w2 in ((c2.workstation) - (c1.workstation))) && (w1 in ((c1.workstation) - (c2.workstation))) && (w1 in (w2.(^succ)))))
})
}





