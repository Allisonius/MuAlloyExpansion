module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(some x: (one Event) {
((trans.x) in (State one->one State))
})
}





