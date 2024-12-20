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
(all w: (one Workstation),c1,c2: (Component - Product) {
((c1 in (c2.(^parts))) => ((w in ((c2.workstation) - (c1.workstation))) && ((w.(^succ)) in ((c1.workstation) - (c2.workstation)))))
})
}





