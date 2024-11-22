module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(some x: (one State),y: (one Event) {
(lone ((x.trans).y))
})
}





