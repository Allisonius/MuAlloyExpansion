module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv6[] {
(all e: (one State) {
(some s: (one State) {
((some (trans.(e->s))) || (one (trans.(e->s))))
})
})
}





