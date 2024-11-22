module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv5[] {
(lone a: (one Node) {
(no ((a.(^adj)) & ((^adj).a)))
})
}