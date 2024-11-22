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
(one w: (one Workstation),p: (one Product) {
((some (p.(^parts))) => ((w in (((p.(^parts)).workstation) - (p.workstation))) && ((w.(^succ)) in ((p.workstation) - ((p.(^parts)).workstation)))))
})
}





