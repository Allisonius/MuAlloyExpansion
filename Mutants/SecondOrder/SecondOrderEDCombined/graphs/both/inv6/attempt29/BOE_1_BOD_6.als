module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all x: (one Node) {
(((Node.(^adj)) in x) || (x in Node))
})
}