module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(no s: (one State),e: (one Event) {
(some ((s.trans).e))
})
}





