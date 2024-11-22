module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(one x: (one State) {
((Event.(trans.x)) in Event)
})
}





