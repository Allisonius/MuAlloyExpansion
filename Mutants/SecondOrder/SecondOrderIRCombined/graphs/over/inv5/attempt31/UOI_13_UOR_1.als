module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv5[] {
(all n1,n2: (one Node) {
(!((n2 in (n1.adj)) && (n1 in (lone (n2.(^adj))))))
})
}