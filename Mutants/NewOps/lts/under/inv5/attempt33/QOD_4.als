module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(all s,s1: (one State),e: (one Event) {
(((s->(e->((State)))) in trans) => ((s1->(e->((State)))) in trans))
})
}





