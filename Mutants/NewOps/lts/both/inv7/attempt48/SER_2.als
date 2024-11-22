module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(let trans_bin = ({ s1,s2: (one Init) {
(some ((s1.trans).s2))
} }) {
(Init in ((Init.(^trans_bin)).(^trans_bin)))
})
}





