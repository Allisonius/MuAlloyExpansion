module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(one s1: (one State) {
(Init in ((s1.trans).State))
})
}





