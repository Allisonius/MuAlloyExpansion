module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv5[] {
(some a: (some Node) {
(no ((a.(^adj)) & ((^adj).a)))
})
}