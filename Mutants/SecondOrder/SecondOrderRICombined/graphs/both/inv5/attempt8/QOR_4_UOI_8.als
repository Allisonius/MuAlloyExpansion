module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv5[] {
(no disj n1,n2: (one Node) {
(!((n2 in (one (n1.adj))) && (n1 in (n2.(^adj)))))
})
}