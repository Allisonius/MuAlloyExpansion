module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv5[] {
(some a: (one Node) {
(some ((a.(^adj)) & ((^adj).a)))
})
}