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
((no var123456 : end { (var123456 in (begin.(*succ)))}) && (begin in ((*succ).end)) && (succ in ((Workstation - end) lone->one Workstation)) && (succ in (Workstation one->lone (Workstation - begin))))
}





