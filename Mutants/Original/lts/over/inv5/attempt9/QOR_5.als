module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(some x,y: (one State) {
((x.trans) = (y.trans))
})
}





