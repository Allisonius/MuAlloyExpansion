module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(all a,b: (one Node) {
(a in (some (b.(*adj))))
})
}