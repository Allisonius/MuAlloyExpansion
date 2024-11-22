module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(all a: (one Node) {
((a in (one (a.(^(*adj))))) => (a in (a.(^adj))))
})
}