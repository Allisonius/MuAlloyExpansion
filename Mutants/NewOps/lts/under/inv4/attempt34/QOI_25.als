module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(all var123456 : State { (let rel = ({ s1,s2: (one var123456) {
(some ((s1->(Event->s2)) & trans))
} }) {
(var123456 in (Init.(*rel)))
})})
}





