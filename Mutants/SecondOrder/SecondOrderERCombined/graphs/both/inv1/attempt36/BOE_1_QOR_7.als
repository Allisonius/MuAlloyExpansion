module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(some disj n,n1: (one Node) {
(((n1.adj).(~adj)) in n)
})
}