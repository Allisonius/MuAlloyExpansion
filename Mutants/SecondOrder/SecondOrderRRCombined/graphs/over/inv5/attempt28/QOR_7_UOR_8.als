module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv5[] {
(some a: (lone Node) {
(no ((a.(^adj)) & ((^adj).a)))
})
}