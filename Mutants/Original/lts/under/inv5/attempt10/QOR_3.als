module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(one x: (one State) {
(((x.trans).State) in Event)
})
}





