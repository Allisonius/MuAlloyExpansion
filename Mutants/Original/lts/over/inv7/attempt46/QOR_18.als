module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(let adj = ({ s1,s2: (one State) {
(some e: (one Event) {
((s1->(e->s2)) in trans)
})
} }) {
(all r: (one (Event.(State.trans))) {
(one i: (one Init) {
(i in (r.(^adj)))
})
})
})
}





