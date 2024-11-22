module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(some e: (one Event) {
(all disj s1,s2: (State - Init) {
((e in (s1.(~(Init.trans)))) => (e in (s2.(~(Init.trans)))))
})
})
}





