module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(some n: (one Node),a: (lone (n.adj)) {
(a in Node)
})
}