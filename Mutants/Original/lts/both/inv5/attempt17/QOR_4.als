module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(one e: (one Event) {
((e->State) in (State.trans))
})
}





