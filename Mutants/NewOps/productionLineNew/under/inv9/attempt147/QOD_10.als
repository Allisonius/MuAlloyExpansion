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
(((((Workstation)) in begin) && (((Workstation)) in end) && (no (((Workstation)).succ)) && (no (succ.((Workstation))))) || ((((Workstation)) in begin) && (((Workstation)) !in end) && (no (succ.((Workstation)))) && ((#(((Workstation)).succ)) = 1)) || ((((Workstation)) in end) && (((Workstation)) !in begin) && (no (((Workstation)).succ)) && ((#(succ.((Workstation)))) = 1)) || ((((Workstation)) !in end) && (((Workstation)) !in begin) && ((#(((Workstation)).succ)) = 1) && ((#(succ.((Workstation)))) = 1)))
}





