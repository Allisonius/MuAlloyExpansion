module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(lone disj n1,n2: (one Node) {
(before ((n1 in (n2.(^adj))) || (n2 in (n1.(^adj)))))
})
}