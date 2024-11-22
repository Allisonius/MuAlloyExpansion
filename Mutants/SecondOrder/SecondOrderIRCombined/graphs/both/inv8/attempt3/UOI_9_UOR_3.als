module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv8[] {
(all n: (one Node) {
(n in (adj.((n.(^adj)).adj)))
})
}