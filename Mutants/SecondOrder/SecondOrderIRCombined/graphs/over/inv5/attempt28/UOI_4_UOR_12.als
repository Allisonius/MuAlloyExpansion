module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv5[] {
(all a: (one Node) {
(one ((a.(^(*adj))) & ((^adj).a)))
})
}