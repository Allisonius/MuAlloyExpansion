module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all n1,n2: (one Node) {
(eventually ((n2 in ((n1.adj).(*adj))) && (((n2.adj).(*adj)) in n1)))
})
}