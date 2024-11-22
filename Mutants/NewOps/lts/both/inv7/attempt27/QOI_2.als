module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(some var123456 : State { (let trans2 = ({ s1,s2: (one var123456) {
(some ((s1.trans).s2))
} }) {
(Init in (Init.(^trans2)))
})})
}





