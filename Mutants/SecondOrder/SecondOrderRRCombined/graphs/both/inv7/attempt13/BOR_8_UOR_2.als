module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv7[] {
(some ({ n: (one Node) {
((n.(*adj)) in Node)
} }))
}