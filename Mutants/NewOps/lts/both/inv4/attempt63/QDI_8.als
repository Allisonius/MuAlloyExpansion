module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(all x: (one Init),y: (State - Init) {
(State in (y.(^(x.trans))))
})
}





