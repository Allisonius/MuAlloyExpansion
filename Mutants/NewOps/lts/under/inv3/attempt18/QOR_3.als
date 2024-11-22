module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(one x: (one Event),y: (one State) {
(lone ((y.trans).x))
})
}





