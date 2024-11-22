module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv3[] {
(eventually ((inv2[]) && (all n: (one Node) {
(no (n.adj))
})))
}
pred inv2[] {

}