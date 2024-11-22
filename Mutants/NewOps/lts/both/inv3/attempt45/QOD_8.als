module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(all disj e1,e2: (one Event) {
((e1.(((State)).trans)) != (e2.(((State)).trans)))
})
}





