module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv5[] {
(no a: (one Node) {
((a.(integer/next[])) !in a)
})
}