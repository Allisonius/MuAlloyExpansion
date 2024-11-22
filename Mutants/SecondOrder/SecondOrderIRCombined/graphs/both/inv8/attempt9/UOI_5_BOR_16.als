module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(all n1,n2,n3: (one Node) {
((eventually ((n1 in (n2.adj)) && (n2 = (n3.adj)))) => ((n1->n3) in adj))
})
}