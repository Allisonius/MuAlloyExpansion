module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(let trans_bin = ({ s1,s2: (one State) {
(some (s1.trans))
} }) {
(all s: (one State) {
((s in (Init.(^trans_bin))) => (Init in (s.(^trans_bin))))
})
})
}





