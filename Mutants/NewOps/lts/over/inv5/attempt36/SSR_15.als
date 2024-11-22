module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(all x: (one State),e: (one Event) {
(some ((x->(e->State)) & trans))
})
}





