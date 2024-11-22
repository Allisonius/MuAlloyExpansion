module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(all s: (one State) {
((Init in (State.(~(s.trans)))) && (Event in (State.(~(Init.trans)))))
})
}





