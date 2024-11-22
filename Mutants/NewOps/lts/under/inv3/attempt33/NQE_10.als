module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(lone s1: (one State) {
(all s: (one State),e: (one Event) {
((e.(s.trans)) = s1)
})
})
}





