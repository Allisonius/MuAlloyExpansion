module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv3[] {
(some p: (some Node) {
(p in (p.(~adj)))
})
}