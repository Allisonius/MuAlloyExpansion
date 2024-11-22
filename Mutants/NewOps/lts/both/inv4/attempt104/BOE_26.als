module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(all i: (one Init) {
(some e: (one Event) {
(no ((Event.(^(i.trans))) - (State - Init)))
})
})
}





