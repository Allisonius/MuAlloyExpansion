module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(some var123456 : Init { (let trans_bin = ({ s1,s2: (one State) {
(some ((s1.trans).s2))
} }) {
(var123456 in (State.(^trans_bin)))
})})
}





