module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(some var123456 : Event { (((State - Init)->State) in (^({ s,ns: (one State) {
((s->(var123456->ns)) in trans)
} })))})
}





