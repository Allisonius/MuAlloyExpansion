module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {

}
pred inv1[] {
(all n: (one Node),n2: (one (n.adj)) {
(n in (lone (n2.adj)))
})
}