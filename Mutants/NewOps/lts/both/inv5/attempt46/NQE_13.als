module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(all disj s1,s2: (one State) {
(some e: (one Event) {
((e in (s1.(~(Init.trans)))) => (e in (s2.(~(Init.trans)))))
})
})
}





