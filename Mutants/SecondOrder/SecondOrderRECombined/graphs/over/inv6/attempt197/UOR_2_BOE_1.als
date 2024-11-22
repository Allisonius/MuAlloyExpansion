module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(all n: (one Node),x: (one Node) {
((((x.adj) in n) || (n in (x.(~adj)))) && ((x in (n.adj)) || (x in (n.(~adj)))))
})
}