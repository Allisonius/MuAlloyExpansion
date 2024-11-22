module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(let adj = ({ s1,s2: (one State) {
(some e: (one Init) {
((s1->(e->s2)) in trans)
})
} }) {
(some i: (one Init),r: (one (Event.(State.trans))) {
(i in (r.(^adj)))
})
})
}





