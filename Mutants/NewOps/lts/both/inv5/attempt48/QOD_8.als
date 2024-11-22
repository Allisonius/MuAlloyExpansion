module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(some e: (one Event) {
((one (e.(((State)).trans))) => (one (e.(((State)).trans))) else (no (e.(((State)).trans))))
})
}





