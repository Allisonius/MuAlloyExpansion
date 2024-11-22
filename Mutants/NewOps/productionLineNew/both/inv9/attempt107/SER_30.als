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
((all x,y: (one Workstation) {
((x in (y.succ)) => (y !in (x.succ)))
}) && (all x,y: (one Worker) {
((x in (y.succ)) => ((#(y.succ)) > (#(x.succ))))
}))
}





