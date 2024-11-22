module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv3[] {
((inv2[]) && (lone n: (one Node) {
(no (n.adj))
}))
}
pred inv2[] {

}