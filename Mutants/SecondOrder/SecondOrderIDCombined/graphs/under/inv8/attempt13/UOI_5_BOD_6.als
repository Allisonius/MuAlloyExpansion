module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(all a,b,c: (one Node) {
((eventually ((a != b) && (a != c) && (b != c))) => (c in (a.adj)))
})
}