module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv5[] {
(some a: (one Node) {
(no ((a.(^adj)) & ((^adj).a)))
})
}