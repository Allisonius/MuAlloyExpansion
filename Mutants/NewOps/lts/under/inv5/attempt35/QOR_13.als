module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(all disj s1,s2: (one State) {
(all e: (one Event) {
(one n: (one State) {
((((e->n) in (s1.trans)) && ((e->n) in (s2.trans))) => (e = e))
})
})
})
}





