module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(let trans_bin = ({ s1,s2: (one State) {
(some (trans.s2))
} }) {
(Init in (Init.(^trans_bin)))
})
}





