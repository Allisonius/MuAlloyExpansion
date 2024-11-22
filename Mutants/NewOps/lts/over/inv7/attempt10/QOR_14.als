module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(all s: (one State) {
(one e: (one Event) {
((e->Init) in (^(s.trans)))
})
})
}





