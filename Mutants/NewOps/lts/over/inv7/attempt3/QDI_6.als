module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(all s1: (State - Init) {
(Init in ((s1.trans).State))
})
}





