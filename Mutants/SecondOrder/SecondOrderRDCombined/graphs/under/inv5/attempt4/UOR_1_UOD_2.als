module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv5[] {
(all a: (one Node) {
((a.adj) = a)
})
}