module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv1[] {
(lone s: (one State),e: (one Event) {
(some (e->s))
})
}





