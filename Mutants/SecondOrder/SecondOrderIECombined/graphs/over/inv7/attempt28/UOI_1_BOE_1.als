module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(all n: (one Node),x: (one Node) {
(before (((x.(^adj)) in n) && (x in (n.(^adj)))))
})
}