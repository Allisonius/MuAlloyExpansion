module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv5[] {
(all disj n1,n2: (one Node) {
(!((n2 in n1) && (n1 in (some (n2.(^adj))))))
})
}