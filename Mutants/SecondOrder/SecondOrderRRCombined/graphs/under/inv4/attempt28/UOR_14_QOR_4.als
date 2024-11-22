module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(no a,b: (one Node) {
(b in (a.(*adj)))
})
}