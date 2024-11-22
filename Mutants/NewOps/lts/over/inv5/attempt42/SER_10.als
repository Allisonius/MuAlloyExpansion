module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(all x: (one Event) {
(some e: (one Event) {
((x.trans) = (State.trans))
})
})
}





