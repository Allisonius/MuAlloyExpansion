module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(let trans_bin = ({ s1,s2: (one State) {
(some (s1.trans))
} }) {
((Init.(*trans_bin)) = State)
})
}





