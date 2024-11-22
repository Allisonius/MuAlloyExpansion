module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv5[] {
(lone n: (one Node) {
((n.(^adj)) in n)
})
}