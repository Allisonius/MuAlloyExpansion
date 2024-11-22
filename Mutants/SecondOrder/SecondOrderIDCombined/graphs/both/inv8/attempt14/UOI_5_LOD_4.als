module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(all n1: (one Node),n2: (one Node),n3: (one Node) {
((eventually (n2 in (n3.adj))) => ((n1->n2) in adj))
})
}