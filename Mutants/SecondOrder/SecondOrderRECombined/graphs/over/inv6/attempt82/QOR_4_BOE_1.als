module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(no x: (one Node) {
(((x.adj) + ((~adj).x)) in Node)
})
}