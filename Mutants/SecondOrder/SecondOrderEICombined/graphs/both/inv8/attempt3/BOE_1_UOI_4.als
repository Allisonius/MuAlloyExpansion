module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(all n: (one Node) {
((adj.((n.(~adj)).adj)) in n)
})
}