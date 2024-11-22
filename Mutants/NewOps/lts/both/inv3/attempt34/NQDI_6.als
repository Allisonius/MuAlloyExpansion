module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(all disj s,s1: (one State),disj e: (one Event) {
((s->(e->s1)) in trans)
})
}





