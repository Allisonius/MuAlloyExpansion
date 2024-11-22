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
(all w: (one Workstation) {
((((w in begin) && ((#(w.succ)) = 1) && ((#(succ.w)) = 0)) || ((w in end) && ((#(w.succ)) = 0) && ((#(succ.w)) = 1)) || (((#(w.succ)) = 1) && ((#(succ.w)) !> 1)) || ((w in begin) && (w in end) && ((#(w.succ)) = 0) && ((#(succ.w)) = 0))) && (w !in (w.succ)) && (w !in (succ.w)))
})
}





