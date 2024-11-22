module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(all e: (one Event) {
(((((State))->(e->((State)))) in trans) => ((((State))->(e->((State)))) in trans))
})
}





