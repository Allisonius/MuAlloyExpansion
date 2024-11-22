module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(all n: (one Node),x: (one Node) {
((n in x) && (x in (one (n.(^adj)))))
})
}