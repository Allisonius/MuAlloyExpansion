module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(all n: (one (State - Init)) {
(((^(State.trans)).n) in Init)
})
}





