module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(all n1,n2,n3: (one Node) {
(((n1 in (some (n2.adj))) && (n2 in n3)) => (n3 in (n1.adj)))
})
}