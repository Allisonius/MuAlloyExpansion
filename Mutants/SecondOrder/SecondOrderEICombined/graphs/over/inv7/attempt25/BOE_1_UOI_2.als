module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(all n: (one Node) {
(historically ((some (n.adj)) && ((n.(^adj)) in Node)))
})
}