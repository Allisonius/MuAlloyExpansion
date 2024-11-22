module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(all s: (one Event) {
(some e: (one Event) {
((e->s) in (Init.trans))
})
})
}





