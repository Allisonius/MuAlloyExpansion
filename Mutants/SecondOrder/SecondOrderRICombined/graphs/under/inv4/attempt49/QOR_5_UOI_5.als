module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(lone disj n1,n2: (one Node) {
(n1 in ((*adj).n2))
})
}