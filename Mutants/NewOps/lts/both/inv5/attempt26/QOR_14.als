module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(all s: (one State) {
(one e: (one Event) {
(one (e.(s.trans)))
})
})
}





