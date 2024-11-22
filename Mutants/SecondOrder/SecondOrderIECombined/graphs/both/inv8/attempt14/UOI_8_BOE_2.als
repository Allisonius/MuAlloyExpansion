module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(all n1: (one Node),n2: (one Node),n3: (one Node) {
(((n1 in (one (n3.adj))) && ((n3.adj) in n2)) => ((n1->n2) in adj))
})
}