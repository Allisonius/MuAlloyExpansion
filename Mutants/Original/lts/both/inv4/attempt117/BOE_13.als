module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
((Init.(^(trans_bin[]))) = State)
}

fun trans_bin[] : (State->State) {
({ s1,s2: (one State) {
(trans in (s1->(Event->s2)))
} })
}



