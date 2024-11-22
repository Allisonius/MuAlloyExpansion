module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(all e: (one Event) {
((some (e.(State.trans))) => (some ((~(Init.trans)).e)))
})
}





