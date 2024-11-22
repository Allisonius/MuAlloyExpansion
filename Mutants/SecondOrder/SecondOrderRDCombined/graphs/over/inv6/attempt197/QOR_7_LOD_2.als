module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(some n: (one Node),x: (one Node) {
((x in (n.adj)) || (x in (n.(~adj))))
})
}