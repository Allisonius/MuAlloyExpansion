module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(no x: (one State) {
((x->(Event->State)) in trans)
})
}





