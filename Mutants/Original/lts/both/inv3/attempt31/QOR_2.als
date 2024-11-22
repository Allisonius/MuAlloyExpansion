module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(no s: (one State) {
(some e: (one Event) {
(one (s->e))
})
})
}





