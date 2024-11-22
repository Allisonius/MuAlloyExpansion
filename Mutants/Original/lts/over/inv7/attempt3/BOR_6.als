module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(all s1: (one State) {
(Init = ((s1.trans).State))
})
}





