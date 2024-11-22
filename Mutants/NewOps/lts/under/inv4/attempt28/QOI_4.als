module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(all var123456 : State { ((Init.(*({ s1,s2: (one var123456) {
(some e: (one Event) {
((s1->(e->s2)) in trans)
})
} }))) = var123456)})
}





