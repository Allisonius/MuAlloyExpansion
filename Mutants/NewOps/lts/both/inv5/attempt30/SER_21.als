module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(all x: (one State),y: (one State) {
(((x.trans).univ) = ((Init.trans).x))
})
}





