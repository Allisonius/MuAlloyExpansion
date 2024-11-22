module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(all s: (one State) {
(Init in (s.(^({ x,y: (one State) {
(no ((x.trans).y))
} }))))
})
}





