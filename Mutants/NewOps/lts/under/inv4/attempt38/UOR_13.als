module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(let trans_bin = ({ s1: (one State),s2: (one State) {
(one ((s1.trans).s2))
} }) {
((Init.(*trans_bin)) = State)
})
}





