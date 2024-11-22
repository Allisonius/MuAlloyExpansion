module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(some var123456 : State { ((Init.(^(trans_bin[]))) = var123456)})
}

fun trans_bin[] : (State->State) {
({ s1,s2: (one State) {
((s1->(Event->s2)) in trans)
} })
}



