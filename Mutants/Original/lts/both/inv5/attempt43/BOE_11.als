module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(all e: (one Event),disj s1,s2: (one State) {
(((s1.(~(Init.trans))) in e) => (e in (s2.(~(Init.trans)))))
})
}





