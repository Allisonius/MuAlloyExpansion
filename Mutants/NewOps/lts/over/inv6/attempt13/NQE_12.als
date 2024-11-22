module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv6[] {
(some s: (one (State - Init)) {
(all e: (one Event) {
(some (trans.(e->s)))
})
})
}





