module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv5[] {
(one a: (one Node) {
(no ((a.(^adj)) & ((^adj).a)))
})
}