module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(all to: (one State) {
((reachable[Init,to]) => (reachable[to,Init]))
})
}
pred reachable[from,to: State] {
(let rel = ({ s1,s2: (one State) {
(no ((s1->(Event->s2)) & trans))
} }) {
(to in (from.(^rel)))
})
}





