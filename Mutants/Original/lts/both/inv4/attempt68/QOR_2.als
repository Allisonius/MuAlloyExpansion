module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(no i: (one Init),s: (one State) {
(s in (i.(*(Event.trans))))
})
}





