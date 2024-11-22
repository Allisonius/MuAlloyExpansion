module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(all x: (one State),y: (one State) {
(lone ((x.trans).y))
})
}





