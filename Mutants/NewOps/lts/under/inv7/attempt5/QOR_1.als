module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(one s: (one ((State.trans).Event)) {
(s in (s.(^({ y,x: (one State) {
(some ((x.trans).y))
} }))))
})
}





