module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(all x: (one State),y: (one Init) {
(((x.trans).univ) = ((univ.trans).x))
})
}





