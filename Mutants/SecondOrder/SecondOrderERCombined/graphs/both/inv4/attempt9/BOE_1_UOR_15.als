module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(all a: (one Node) {
(((a.(*adj)) in a) && (!((a->a) in adj)))
})
}