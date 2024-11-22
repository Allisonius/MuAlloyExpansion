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
pred inv5[] {
(some w1,w2: (one Worker) {
(all ws: (one Workstation) {
((((ws->w1) in workers) && ((ws->w2) in workers) && (w1 in Human)) <=> (w2 in Human))
})
})
}





