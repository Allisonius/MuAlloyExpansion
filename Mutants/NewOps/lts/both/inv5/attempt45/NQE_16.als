module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(some e: (one Event) {
(all x,y: (one State) {
(((x->(e->State)) in trans) => ((y->(e->State)) in trans))
})
})
}





