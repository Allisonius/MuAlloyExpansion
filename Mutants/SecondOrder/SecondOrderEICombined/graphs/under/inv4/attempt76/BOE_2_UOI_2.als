module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(all disj n1,n2: (one Node) {
(((n2.(^(*adj))) in n1) => (n2 in (n1.(*adj))))
})
}