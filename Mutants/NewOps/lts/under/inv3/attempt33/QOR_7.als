module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(all s: (one State),e: (one Event) {
(one s1: (one State) {
((e.(s.trans)) = s1)
})
})
}





