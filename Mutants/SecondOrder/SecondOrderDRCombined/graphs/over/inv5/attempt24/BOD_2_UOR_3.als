module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv5[] {
(all a: (one Node) {
(no a)
})
}