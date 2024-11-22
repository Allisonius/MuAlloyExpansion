module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(all s: (one State),i: (State - Init),e: (one Event) {
(s in ((trans.e).i))
})
}





