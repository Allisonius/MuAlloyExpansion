module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv3[] {
(all p: (one Node) {
(p in (p.(~adj)))
})
}