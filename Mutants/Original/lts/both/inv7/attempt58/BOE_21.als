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
(some e: (one Event) {
((Init in (s2.(*adj))) => ((s1->(e->s2)) in trans))
})
})
})
}





