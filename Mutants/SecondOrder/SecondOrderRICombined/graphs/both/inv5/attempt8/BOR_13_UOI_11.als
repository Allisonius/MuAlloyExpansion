module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv5[] {
(all disj n1,n2: (one Node) {
(!((n2 != (n1.adj)) && (n1 in (one (n2.(^adj))))))
})
}