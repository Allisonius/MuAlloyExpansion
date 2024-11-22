module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(no var123456 : Init { (((State - var123456)->State) in (^({ s,ns: (one State) {
((s->(Event->ns)) in trans)
} })))})
}





