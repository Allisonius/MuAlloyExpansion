module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(one s: (one State) {
(some ((^(s.trans)) :> Init))
})
}





