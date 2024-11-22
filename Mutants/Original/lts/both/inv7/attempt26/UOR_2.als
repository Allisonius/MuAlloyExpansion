module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(let trans2 = ({ s1,s2: (one State) {
(lone ((s1.trans).s2))
} }) {
(Init = (Init.(^trans2)))
})
}





