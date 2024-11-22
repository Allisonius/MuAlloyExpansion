module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(let adj = ({ x,y: (one State) {
(some e: (one Event) {
((x->(e->y)) in trans)
})
} }) {
(all s1,s2: (one State) {
(one e: (one Event) {
((one State) || (((s1->(e->s2)) in trans) => (Init in (s2.(*adj)))))
})
})
})
}





