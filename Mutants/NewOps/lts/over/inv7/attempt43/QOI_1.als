module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(all var123456 : State { (let trans_bin = ({ s1,s2: (one var123456) {
(some ((s1.trans).s2))
} }) {
(all s: (one var123456) {
((s in (Init.(^trans_bin))) => (Init in (s.(^trans_bin))))
})
})})
}





