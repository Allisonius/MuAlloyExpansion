module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(all n1,n2,n3: (one Node) {
(((n1 in (n2.adj)) && ((n3.adj) in n2)) => ((n1->n3) in adj))
})
}





