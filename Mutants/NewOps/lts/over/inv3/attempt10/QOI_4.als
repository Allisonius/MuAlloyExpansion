module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(all var123456 : Event { ((State.trans) in (var123456 some->one State))})
}





