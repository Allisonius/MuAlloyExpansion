module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(lone n1,n2: (one Node) {
(eventually ((n2 in (n1.(^adj))) && (n2 !in (n2.adj))))
})
}