module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(let trans_bin = ({ s1,s2: (one Event) {
(some ((s1.trans).s2))
} }) {
((Init.(*trans_bin)) = State)
})
}





