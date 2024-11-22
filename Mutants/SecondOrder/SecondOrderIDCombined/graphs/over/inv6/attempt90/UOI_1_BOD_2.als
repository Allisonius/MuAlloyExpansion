module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all x: (one Node) {
(lone ((x.(*adj)) + (x.(~adj))))
})
}