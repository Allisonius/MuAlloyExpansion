module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(some e: (one Event) {
((e->Init) in (^(((State)).trans)))
})
}





