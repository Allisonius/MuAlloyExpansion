module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv1[] {
(some e: (one Event) {
(((((State))->(e->((State)))) in trans) => (((State)) != ((State))))
})
}





