module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(no s: (one State) {
(some (((*(Event.trans)).s) & Init))
})
}





