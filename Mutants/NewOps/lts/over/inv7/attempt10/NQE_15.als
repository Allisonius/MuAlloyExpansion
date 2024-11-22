module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(some e: (one Event) {
(all s: (one State) {
((e->Init) in (^(s.trans)))
})
})
}





