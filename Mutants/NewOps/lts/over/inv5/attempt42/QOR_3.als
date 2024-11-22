module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(lone x: (one State) {
(some e: (one Event) {
((x.trans) = (State.trans))
})
})
}





