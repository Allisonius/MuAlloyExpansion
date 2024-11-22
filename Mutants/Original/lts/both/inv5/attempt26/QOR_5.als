module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(some s: (one State) {
(some e: (one Event) {
(one (e.(s.trans)))
})
})
}





