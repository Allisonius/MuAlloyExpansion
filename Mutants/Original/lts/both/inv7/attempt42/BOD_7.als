module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(let trans2 = ({ s1,s2: (one State) {
(some (trans.s2))
} }) {
(Init in (Init.((^trans2) + trans2)))
})
}





