module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(((State - Init)->Init) in (^({ s,ns: (one State) {
((s->(Event->ns)) in trans)
} })))
}





