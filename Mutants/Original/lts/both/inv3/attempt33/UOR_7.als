module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(all s1,s2: (one State),e: (one Event) {
(some ((s1.trans).s2))
})
}





