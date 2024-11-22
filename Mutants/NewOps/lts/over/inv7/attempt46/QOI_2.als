module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(some var123456 : State { (let adj = ({ s1,s2: (one var123456) {
(some e: (one Event) {
((s1->(e->s2)) in trans)
})
} }) {
(all r: (one (Event.(var123456.trans))) {
(some i: (one Init) {
(i in (r.(^adj)))
})
})
})})
}





