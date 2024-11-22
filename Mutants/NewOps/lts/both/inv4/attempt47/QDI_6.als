module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(all i: (State - Init),e: (one Event) {
((e.(i.trans)) = State)
})
}





