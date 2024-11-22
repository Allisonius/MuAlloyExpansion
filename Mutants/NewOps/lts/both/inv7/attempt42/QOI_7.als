module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(all var123456 : Init { (let trans2 = ({ s1,s2: (one State) {
(some ((s1.trans).s2))
} }) {
(var123456 in (var123456.((^trans2) + trans2)))
})})
}





