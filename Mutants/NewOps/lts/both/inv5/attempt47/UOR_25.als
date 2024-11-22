module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(all s1,s2: (one State) {
(all e1,e2: (one Event) {
(((lone (e1.(s1.trans))) && (some (e2.(s2.trans)))) => (e1 = e2))
})
})
}





