module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv6[] {
(some s: (one State) {
((some (trans.(((Event))->s))) || (one (trans.(((Event))->s))))
})
}





