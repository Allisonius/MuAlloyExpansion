module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv8[] {
(all a,b,c: (one Node) {
((a != b) && (a != c))
})
}