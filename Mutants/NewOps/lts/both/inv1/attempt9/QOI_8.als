module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv1[] {
(some var123456 : State { (trans in (var123456 some->(Event->var123456)))})
}





