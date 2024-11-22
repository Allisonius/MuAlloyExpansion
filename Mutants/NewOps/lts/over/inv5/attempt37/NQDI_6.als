module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(all disj s1,s2: (one State),disj e: (one Event) {
((s1->(e->s2)) in trans)
})
}





