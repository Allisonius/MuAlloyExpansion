module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv5[] {
(all disj n1,n2: (one Node) {
(!(after (n1 in (n2.(^adj)))))
})
}