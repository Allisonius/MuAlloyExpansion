module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(all n: (one Node),x: (one Node) {
((n in (one (x.(^adj)))) && ((n.(^adj)) in x))
})
}