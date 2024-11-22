module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(all s: (State - Init),s1: (one State),e: (one Event) {
((e->s1) in (s.trans))
})
}





