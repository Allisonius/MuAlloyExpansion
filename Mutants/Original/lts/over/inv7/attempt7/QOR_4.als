module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(one x: (one State) {
((x.trans) in (Event one->one State))
})
}





