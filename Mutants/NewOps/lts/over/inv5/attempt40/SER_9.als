module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(all s: (one Init) {
(all e: (one Event) {
(e in (State.(~(s.trans))))
})
})
}





