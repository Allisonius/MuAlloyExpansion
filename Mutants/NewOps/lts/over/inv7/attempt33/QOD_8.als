module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(some e1: (one Event) {
(((((State))->(((Event))->((State)))) in trans) => ((((State))->(e1->((State)))) in trans))
})
}





