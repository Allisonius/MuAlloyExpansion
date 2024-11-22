module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(all var123456 : State { (let adj = ({ s1,s2: (one var123456) {
(some e: (one Event) {
((s1->(e->s2)) in trans)
})
} }) {
(some i: (one Init),r: (one (Event.(var123456.trans))) {
(i in (r.(^adj)))
})
})})
}





