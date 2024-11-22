module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv1[] {
(no n: (one Node),a: (one (n.adj)) {
(a in Node)
})
}