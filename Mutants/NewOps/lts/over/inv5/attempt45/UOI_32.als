module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(all s: (one State) {
((Event in (State.(~(s.trans)))) && (Event in (lone (State.(~(Init.trans))))))
})
}





