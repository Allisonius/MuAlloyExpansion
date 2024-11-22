module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(some var123456 : Init { (let rel = ({ s1,s2: (one State) {
(some ((s1->(Event->s2)) & trans))
} }) {
(State in (var123456.(*rel)))
})})
}





