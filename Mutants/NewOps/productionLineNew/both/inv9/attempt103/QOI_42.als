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
((some var123456 : Workstation { ((begin.(^succ)) = (var123456 - begin))}) && (no w: (one Workstation) {
((w in (begin.(^succ))) && (w !in (begin + end)))
}) && ((begin.succ) = end))
}





