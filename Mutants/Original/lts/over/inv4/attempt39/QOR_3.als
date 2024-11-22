module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(lone s1: (one State) {
(some ((^(Init.trans)).s1))
})
}





