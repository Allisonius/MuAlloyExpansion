module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all n: (one Node),x: (one Node) {
(((n in (x.adj)) || (n in (x.(~adj)))) && ((x in (lone n)) || (x in (n.(~adj)))))
})
}