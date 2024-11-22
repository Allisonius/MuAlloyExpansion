module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(one x,y: (one State) {
(((x->(Event->y)) in trans) => ((y->(Event->y)) in trans))
})
}





