module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(no var123456 : State { (((var123456 - Init)->var123456) in (^({ s,ns: (one var123456) {
((s->(Event->ns)) in trans)
} })))})
}





