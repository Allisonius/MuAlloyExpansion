module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(lone s,s1: (one State),e: (one Event) {
((s->(e->s1)) in trans)
})
}





