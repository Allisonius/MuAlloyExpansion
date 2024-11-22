module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(all x: (one Event),y: (one State) {
(((x.trans).univ) = ((univ.trans).y))
})
}





