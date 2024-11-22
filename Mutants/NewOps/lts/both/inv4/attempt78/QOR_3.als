module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(lone s: (one State) {
(some e: (one Event) {
((e.(s.trans)) in Init)
})
})
}





