module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv4[] {
(all disj n1,n2: (one Node) {
((n1 in (one (n2.(^adj)))) || (n2 in (n1.(^adj))))
})
}