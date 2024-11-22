module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(some s: (one ((State.trans).Event)) {
((s.(^({ y,x: (one State) {
(some ((x.trans).y))
} }))) = Init)
})
}





