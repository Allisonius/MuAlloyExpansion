module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv6[] {
(no s: (one State) {
(Event in ((s.trans).State))
})
}





