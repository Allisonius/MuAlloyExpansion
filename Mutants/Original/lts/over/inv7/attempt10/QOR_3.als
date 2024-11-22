module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(lone s: (one State) {
(some e: (one Event) {
((e->Init) in (^(s.trans)))
})
})
}





