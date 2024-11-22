module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(some n: (one Node),a: (some (n.adj)) {
(a in Node)
})
}