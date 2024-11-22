module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv3[] {
((inv2[]) && (all n: (one Node) {
(lone (n.adj))
}))
}
pred inv2[] {

}