module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(some e1,e2: (one Event) {
(((((State))->(e1->((State)))) in trans) => ((((State))->(e2->((State)))) in trans))
})
}





