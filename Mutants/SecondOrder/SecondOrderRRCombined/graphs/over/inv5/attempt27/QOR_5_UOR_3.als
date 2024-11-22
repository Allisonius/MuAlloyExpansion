module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv5[] {
(lone a: (one Node) {
((a.(integer/next[])) !in a)
})
}