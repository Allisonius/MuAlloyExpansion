module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(some x: (one Init) {
((x.trans) in (Event one->one State))
})
}





