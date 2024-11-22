module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(all x,y: (one State) {
(((x->(((Event))->State)) in trans) => ((y->(((Event))->State)) in trans))
})
}





