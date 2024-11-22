module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(lone e: (one Event) {
((Event->State) in (State.trans))
})
}





