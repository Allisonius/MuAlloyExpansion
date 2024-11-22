module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(let trans_bin = ({ s1,s2: (one State) {
(some ((s1.trans).s2))
} }) {
(some (iden & (^trans_bin)))
})
}





