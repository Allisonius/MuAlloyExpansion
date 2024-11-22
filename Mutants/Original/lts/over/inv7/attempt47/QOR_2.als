module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(no to: (one State) {
((reachable[Init,to]) => (reachable[to,Init]))
})
}
pred reachable[from,to: State] {
(let rel = ({ s1,s2: (one State) {
(some ((s1->(Event->s2)) & trans))
} }) {
(to in (from.(^rel)))
})
}





