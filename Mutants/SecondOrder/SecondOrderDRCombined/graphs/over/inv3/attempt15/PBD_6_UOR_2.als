module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv3[] {
((inv2[]) && (all n: (one Node) {
(no (n.adj))
}))
}
pred inv2[] {

}