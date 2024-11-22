module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(all e1,e2: (one Event) {
((((e1->((State))) in (((State)).trans)) && ((e2->((State))) in (((State)).trans))) => (e1 = e2))
})
}





