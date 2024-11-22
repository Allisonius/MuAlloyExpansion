module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv1[] {
((all v1,v2: (one Node) {
((adj in (v1->v2)) => ((v2->v1) in adj))
}) && (no (adj & adj)))
}