module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(some s: (one State) {
(Init in (s.(^({ x,y: (one State) {
(some ((x.trans).y))
} }))))
})
}





