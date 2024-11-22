module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(all s1: (one State) {
(no ((^(Init.trans)).s1))
})
}





