module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv5[] {
(one a: (one Node) {
((a.(integer/next[])) !in a)
})
}