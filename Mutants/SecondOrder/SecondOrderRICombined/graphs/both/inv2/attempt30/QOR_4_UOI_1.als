module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(!(inv1[]))
}
pred inv1[] {
(no n: (one Node),n2: (one (n.(~adj))) {
(n in (n2.adj))
})
}