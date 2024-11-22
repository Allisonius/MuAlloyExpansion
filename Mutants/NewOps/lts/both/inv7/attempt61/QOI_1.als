module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(all var123456 : State { (let adj = ({ x,y: (one var123456) {
(some e: (one Event) {
((x->(e->y)) in trans)
})
} }) {
(all s1,s2: (one var123456) {
(some e: (one Event) {
((one var123456) || (((s1->(e->s2)) in trans) => (Init in (s2.(*adj)))))
})
})
})})
}





