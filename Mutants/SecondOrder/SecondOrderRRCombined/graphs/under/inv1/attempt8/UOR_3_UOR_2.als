module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv1[] {
(all n: (one Node),a: (one (n.adj)) {
(a in Node)
})
}