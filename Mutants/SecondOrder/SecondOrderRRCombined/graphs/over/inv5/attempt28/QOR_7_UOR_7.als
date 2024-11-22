module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv5[] {
(some a: (set Node) {
(no ((a.(^adj)) & ((^adj).a)))
})
}